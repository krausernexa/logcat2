.class public Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;
.super Landroid/app/Application;
.source "ChatApplication.java"


# static fields
.field public static ip:Ljava/lang/String;

.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, ""

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;->ip:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static declared-synchronized addToList(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    const-class v1, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;->list:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit v1

    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized cleanList()V
    .locals 4

    .prologue
    .line 29
    const-class v2, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "activity":Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 30
    .restart local v0    # "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 34
    :cond_1
    :try_start_1
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    monitor-exit v2

    return-void
.end method

.method public static declared-synchronized removeActivity(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    const-class v3, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;

    monitor-enter v3

    const/4 v1, 0x0

    .line 47
    .local v1, "t":Landroid/app/Activity;
    :try_start_0
    sget-object v2, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 48
    .local v0, "activity2":Landroid/app/Activity;
    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_0

    .line 49
    move-object v1, p0

    goto :goto_0

    .line 52
    .end local v0    # "activity2":Landroid/app/Activity;
    :cond_1
    if-eqz v1, :cond_2

    .line 53
    sget-object v2, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;->list:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_2
    monitor-exit v3

    return-void

    .line 46
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static setList(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;->list:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 41
    const-string v1, "zdy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;->list:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;->list:Ljava/util/List;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 62
    invoke-static {}, Lcom/ubtechinc/alphaenglishchat/application/CrashHandler;->getInstance()Lcom/ubtechinc/alphaenglishchat/application/CrashHandler;

    move-result-object v0

    .line 63
    .local v0, "crashHandler":Lcom/ubtechinc/alphaenglishchat/application/CrashHandler;
    invoke-virtual {v0, p0}, Lcom/ubtechinc/alphaenglishchat/application/CrashHandler;->init(Landroid/content/Context;)V

    .line 64
    return-void
.end method
