.class public Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExitBroadcast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;


# direct methods
.method public constructor <init>(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 371
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "aciton":Ljava/lang/String;
    const-string v7, "com.ubtechinc.closeapp"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 374
    const-string v7, "zdy"

    const-string v8, "speech_stopRecognized "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v7, "zdy"

    const-string v8, "APP_EXIT  mRobot.releaseApi()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$400(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    .line 385
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-virtual {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->finish()V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 396
    const-string v7, "clientIP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 398
    const-string v7, "clientIP"

    .line 399
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sput-object v7, Lcom/ubtechinc/alphaenglishchat/application/ChatApplication;->ip:Ljava/lang/String;

    goto :goto_0

    .line 400
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .line 401
    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "com.ubtechinc.config"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 400
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 403
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    move-result-object v7

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "utf-8"

    invoke-virtual {v7, p2, v8, v9}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sendConfig2Server(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 404
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .line 405
    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "com.ubtechinc.config.save"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 404
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 407
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->writeConfig(Landroid/content/Intent;)V

    .line 409
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 410
    :cond_4
    const-string v7, "com.ubtechinc.services.stoptts"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 411
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$700(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    .line 412
    const-string v7, "stop_type"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 413
    .local v5, "stopType":I
    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 414
    const-string v7, "ChatActivity"

    const-string v8, "!!! STOPTTS_ACTION TYPE_INTERRUPT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    new-instance v8, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-direct {v8}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;-><init>()V

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$802(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 416
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v7

    const-string v8, "Special_Event"

    invoke-virtual {v7, v8}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setDomain(Ljava/lang/String;)V

    .line 417
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v7

    const-string v8, "Interrupt"

    invoke-virtual {v7, v8}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setAction(Ljava/lang/String;)V

    .line 419
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$900(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->addToQueue(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    goto/16 :goto_0

    .line 421
    .end local v5    # "stopType":I
    :cond_5
    const-string v7, "com.ubtechinc.notify.login"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 422
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 423
    :cond_6
    const-string v7, "com.ubtechinc.services.ABOUT_TTS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 424
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 425
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    const-string v8, "alpha_is_tts_on"

    invoke-virtual {v2, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1002(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Z)Z

    .line 426
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1000(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 427
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)I

    move-result v8

    or-int/lit8 v8, v8, 0x1

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1102(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;I)I

    goto/16 :goto_0

    .line 429
    :cond_7
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)I

    move-result v8

    and-int/lit8 v8, v8, -0x2

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1102(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;I)I

    goto/16 :goto_0

    .line 431
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_8
    const-string v7, "com.ubtechinc.services.ABOUT_ACTION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 432
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 433
    .restart local v2    # "bundle":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    const-string v8, "alpha_is_action_on"

    invoke-virtual {v2, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1202(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Z)Z

    goto/16 :goto_0

    .line 434
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .line 435
    invoke-static {v9}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "com.ubtechinc.button.read"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 434
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 436
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    move-result-object v7

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "gbk"

    invoke-virtual {v7, p2, v8, v9}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->sendButtonEvent2Server(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 437
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    .line 438
    invoke-static {v9}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "com.ubtechinc.button.click"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 437
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 439
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    move-result-object v7

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->parseClickEvent(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 440
    .local v4, "index":Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_0

    .line 443
    .end local v4    # "index":Ljava/lang/String;
    :cond_b
    const-string v7, "com.ubtechinc.robot_uuid.info"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 444
    const-string v7, "robot_uuid"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 445
    .local v6, "uuid":Ljava/lang/String;
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7, v6}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1302(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    const-string v7, "ChatActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!!!!!!! uuid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 447
    .end local v6    # "uuid":Ljava/lang/String;
    :cond_c
    const-string v7, "com.ubtechinc.services.SPEECH_DIRECTION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 448
    const-string v7, "absoluteAngle"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v1

    .line 449
    .local v1, "angle":B
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7, v1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1402(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;B)B

    .line 450
    const-string v7, "ChatActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!!!!!!! angle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7, v1}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;B)V

    goto/16 :goto_0

    .line 452
    .end local v1    # "angle":B
    :cond_d
    const-string v7, "com.ubtechinc.robot.tts_hint_wakeup"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 453
    const-string v7, "ChatActivity"

    const-string v8, "!!!! ALPHA_TTS_HINT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 455
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v7, "hint_event"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, "hintEvent":Ljava/lang/String;
    const-string v7, "wakeup"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 457
    const-string v7, "ChatActivity"

    const-string v8, "!!!! TTSHINT_WAKEUP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1700(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1602(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;I)I

    .line 460
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    new-instance v8, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    invoke-direct {v8}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;-><init>()V

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$802(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .line 461
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v7

    const-string v8, "Special_Event"

    invoke-virtual {v7, v8}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setDomain(Ljava/lang/String;)V

    .line 462
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v7

    const-string v8, "Wakeup"

    invoke-virtual {v7, v8}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->setAction(Ljava/lang/String;)V

    .line 464
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$900(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->addToQueue(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    goto/16 :goto_0

    .line 465
    :cond_e
    const-string v7, "asr_timeout"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 466
    const-string v7, "ChatActivity"

    const-string v8, "!!!! TTSHINT_ASR_TIMEOUT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)I

    move-result v7

    if-lez v7, :cond_f

    .line 468
    const-string v7, "ChatActivity"

    const-string v8, "!!!! TTSHINT_ASR_TIMEOUT busy"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)I

    move-result v8

    or-int/lit8 v8, v8, 0x8

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1102(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;I)I

    goto/16 :goto_0

    .line 471
    :cond_f
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)I

    move-result v8

    or-int/lit8 v8, v8, 0x8

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1102(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;I)I

    .line 472
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$ExitBroadcast;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1800(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    goto/16 :goto_0
.end method
