.class Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;
.super Landroid/os/Handler;
.source "ChatActivity.java"


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
    .line 1358
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1362
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1364
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1365
    .local v1, "text":Ljava/lang/String;
    const-string v2, "ChatActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start_TTS mRobotState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v4}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    const-string v2, "ChatActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start_TTS text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)I

    move-result v2

    if-gtz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1370
    const-string v2, "ChatActivity"

    const-string v3, "start_TTS prepare 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1372
    const-string v2, "ChatActivity"

    const-string v3, "start_TTS prepare 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    const-string v2, "ChatActivity"

    const-string v3, "start_TTS prepare 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    move-result-object v2

    const-string v3, "en_us"

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v4}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2200(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->speech_startTTS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1377
    invoke-static {v5}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyTTSState(I)V

    goto :goto_0

    .line 1381
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1382
    .local v0, "action":Ljava/lang/String;
    const-string v2, "ChatActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start_Action mRobotState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v4}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    if-eqz v0, :cond_0

    .line 1385
    const-string v2, "ChatActivity"

    const-string v3, "start_Action prepare 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1387
    const-string v2, "ChatActivity"

    const-string v3, "start_Action prepare 2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1102(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;I)I

    .line 1389
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2, v0}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$3602(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1391
    const-string v2, "ChatActivity"

    const-string v3, "start_Action prepare 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$9;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v2}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->action_PlayActionName(Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 1394
    invoke-static {v5}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyActionState(I)V

    goto/16 :goto_0

    .line 1362
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
