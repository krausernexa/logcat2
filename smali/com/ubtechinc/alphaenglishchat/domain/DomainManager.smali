.class public Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;
.super Ljava/lang/Thread;
.source "DomainManager.java"


# static fields
.field private static domainManagerInstance:Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

.field private static sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;


# instance fields
.field private baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

.field private isTakePhoto:Z

.field private mContext:Landroid/content/Context;

.field private mDaemonDomain:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

.field private queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->domainManagerInstance:Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->isTakePhoto:Z

    .line 47
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 49
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->getDaemonDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mDaemonDomain:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    .line 50
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mDaemonDomain:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    .line 51
    return-void
.end method

.method public static getDomainManagerInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .prologue
    .line 54
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->domainManagerInstance:Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    invoke-direct {v0, p0, p1}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;-><init>(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->domainManagerInstance:Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    .line 56
    sput-object p1, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 58
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->domainManagerInstance:Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    return-object v0
.end method

.method private getFromQueue()Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 170
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 172
    .local v1, "installed":Z
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    const/4 v1, 0x1

    .line 177
    :goto_0
    const-string v3, "zdy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeSartCamera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
    .locals 6
    .param p1, "result"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 83
    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "domain":Ljava/lang/String;
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!! domain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v3, "Special_Event"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mDaemonDomain:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->handleState(Ljava/lang/String;)V

    .line 89
    const-string v3, "Interrupt"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Wakeup"

    .line 90
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-static {v3, v4}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->getMusicDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;

    move-result-object v3

    iput-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    .line 92
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    invoke-virtual {v3, p1}, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;->process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    .line 140
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    if-eqz v3, :cond_f

    .line 141
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    invoke-virtual {v3, p1}, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;->process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    .line 149
    .end local v1    # "domain":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 94
    .restart local v1    # "domain":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    invoke-virtual {v3}, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;->isBusy()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    if-nez v3, :cond_1

    .line 96
    :cond_5
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mDaemonDomain:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    const-string v4, "action_asr"

    invoke-virtual {v3, v4}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->handleState(Ljava/lang/String;)V

    .line 97
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    .line 98
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->isTakePhoto:Z

    .line 99
    const-string v3, "Weather"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 100
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-static {v3, v4}, Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;->getWeatherDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/WeatherDomain;

    move-result-object v3

    iput-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    goto :goto_0

    .line 101
    :cond_6
    const-string v3, "Music"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 102
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-static {v3, v4}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->getMusicDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;

    move-result-object v3

    iput-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    goto :goto_0

    .line 103
    :cond_7
    const-string v3, "Reminder"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 104
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-static {v3, v4}, Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;->getRemindDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/RemindDomain;

    move-result-object v3

    iput-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    goto :goto_0

    .line 105
    :cond_8
    const-string v3, "Joke"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 106
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-static {v3, v4}, Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;->getJokeDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/JokeDomain;

    move-result-object v3

    iput-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    goto :goto_0

    .line 107
    :cond_9
    const-string v3, "QA"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 108
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-static {v3, v4}, Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;->getOfflineQADomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/OfflineQADomain;

    move-result-object v3

    iput-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    goto/16 :goto_0

    .line 109
    :cond_a
    const-string v3, "Action_Performance"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 110
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-static {v3, v4}, Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;->getOfflineAPDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/OfflineAPDomain;

    move-result-object v3

    iput-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    goto/16 :goto_0

    .line 111
    :cond_b
    const-string v3, "Story_Search"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 112
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-static {v3, v4}, Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;->getStoryDanceDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/StoryDanceDomain;

    move-result-object v3

    iput-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->baseDomain:Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;

    goto/16 :goto_0

    .line 113
    :cond_c
    const-string v3, "Take_Photo"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 114
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mContext:Landroid/content/Context;

    const-string v4, "com.ubtech.smartcamera"

    invoke-direct {p0, v3, v4}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 115
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyPhotoState(I)V

    goto/16 :goto_1

    .line 125
    :cond_d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->isTakePhoto:Z

    .line 126
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.ubtechinc.alphaenglishchat"

    const-string v4, "com.ubtechinc.alphaenglishchat.camera.CameraActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 130
    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 133
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_e
    const-string v3, "Time"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 142
    :cond_f
    iget-boolean v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->isTakePhoto:Z

    if-nez v3, :cond_2

    .line 143
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 145
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public addToQueue(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
    .locals 1
    .param p1, "result"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->interrupt()V

    .line 71
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->getFromQueue()Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v1

    .line 157
    .local v1, "result":Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;
    invoke-direct {p0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "result":Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 166
    :cond_0
    return-void
.end method
