.class public Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;
.super Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;
.source "SelfIntroductionDomain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain$Task;
    }
.end annotation


# static fields
.field private static SelfIntroductionDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

.field private static sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;


# instance fields
.field private TAG:Ljava/lang/String;

.field private count:I

.field private mContext:Landroid/content/Context;

.field private selfIntro:[Ljava/lang/String;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->SelfIntroductionDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;-><init>()V

    .line 25
    const-string v0, "SelfIntroductionDomain"

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->count:I

    .line 35
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->mContext:Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->setBusy(Z)V

    .line 37
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->selfIntro:[Ljava/lang/String;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;)I
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    .prologue
    .line 22
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->count:I

    return v0
.end method

.method static synthetic access$102(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->count:I

    return p1
.end method

.method static synthetic access$200(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->selfIntro:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    return-object v0
.end method

.method public static getSelfIntroductionDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .prologue
    .line 41
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->SelfIntroductionDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->SelfIntroductionDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    .line 43
    sput-object p1, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 45
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->SelfIntroductionDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->TAG:Ljava/lang/String;

    const-string v1, "\u53d6\u6d88\u4efb\u52a1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->timer:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancelAction()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public declared-synchronized init()V
    .locals 6

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->timer:Ljava/util/Timer;

    .line 69
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->TAG:Ljava/lang/String;

    const-string v1, "\u521d\u59cb\u5316\u4efb\u52a1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain$Task;

    invoke-direct {v1, p0}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain$Task;-><init>(Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;)V

    const-wide/32 v2, 0xc350

    const-wide/32 v4, 0xc350

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
    .locals 0
    .param p1, "result"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 106
    return-void
.end method

.method public startIntroduce()Z
    .locals 5

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "willIntroduce":Z
    iget v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->count:I

    .line 53
    iget v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->count:I

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_0

    .line 54
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->selfIntro:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 55
    .local v0, "index":I
    sget-object v2, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->selfIntro:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 56
    const/4 v1, 0x1

    .line 58
    .end local v0    # "index":I
    :cond_0
    return v1
.end method

.method public stopIntroduce()V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/ubtechinc/alphaenglishchat/domain/SelfIntroductionDomain;->cancel()V

    .line 64
    return-void
.end method
