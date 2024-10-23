.class Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$3;
.super Ljava/util/TimerTask;
.source "DaemonDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->startSecondTimer()V
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
    .line 228
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$3;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 232
    invoke-static {}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->access$200()Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$3;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->access$300(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080051

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 233
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$3;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->access$400(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;)V

    .line 234
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain$3;->this$0:Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;->access$002(Lcom/ubtechinc/alphaenglishchat/domain/DaemonDomain;I)I

    .line 235
    return-void
.end method
