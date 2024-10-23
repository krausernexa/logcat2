.class Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$5;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$5;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    .prologue
    .line 921
    return-void
.end method

.method public start_Action(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 911
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$5;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2700(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 912
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 913
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$5;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2700(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 915
    return-void
.end method

.method public start_TTS(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isNeedAction"    # Z

    .prologue
    .line 894
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$5;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2700(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 895
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 896
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$5;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2700(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 907
    return-void
.end method

.method public stat_FreeAngle()V
    .locals 0

    .prologue
    .line 889
    return-void
.end method

.method public stop_FreeAngle()V
    .locals 0

    .prologue
    .line 883
    return-void
.end method

.method public stop_TTS()V
    .locals 0

    .prologue
    .line 877
    return-void
.end method
