.class Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$1;
.super Ljava/util/TimerTask;
.source "DaemonDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$1;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 75
    const-string v2, "DaemonDomain"

    const-string v3, "STATE_LIGHT_SLEEP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$1;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->access$002(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;I)I

    .line 77
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$1;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->access$100(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 78
    .local v1, "index":I
    invoke-static {}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->access$200()Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$1;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->access$100(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-interface {v2, v3, v5}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 81
    const-wide/32 v2, 0x1d4c0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    invoke-static {}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->access$200()Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$1;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->access$300(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080051

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 88
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$1;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->access$400(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)V

    .line 89
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$1;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->access$002(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;I)I

    .line 90
    const-string v2, "DaemonDomain"

    const-string v3, "STATE_MUSIC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
