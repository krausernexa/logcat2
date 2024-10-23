.class Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$WolframQueryRunnable;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WolframQueryRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;


# direct methods
.method private constructor <init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V
    .locals 0

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$WolframQueryRunnable;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
    .param p2, "x1"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$1;

    .prologue
    .line 1011
    invoke-direct {p0, p1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$WolframQueryRunnable;-><init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1014
    invoke-static {}, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->getWolframUtilInstance()Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;

    move-result-object v1

    .line 1015
    .local v1, "wolframUtil":Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$WolframQueryRunnable;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2900(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ubtechinc/alphaenglishchat/wolfram/WolframUtil;->query(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "wolframResult":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1017
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$WolframQueryRunnable;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$3000(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1019
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$WolframQueryRunnable;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$3100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/apiai/ApiAiUnderstandText;->cancel()V

    .line 1021
    :cond_0
    const-string v2, "ChatActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wolframResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const-string v2, "\\|"

    const-string v3, ","

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    const-string v2, "ChatActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wolframResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$WolframQueryRunnable;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    iget-object v2, v2, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->ubtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 1028
    :goto_0
    return-void

    .line 1026
    :cond_1
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$WolframQueryRunnable;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$WolframQueryRunnable;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2900(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$3200(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
