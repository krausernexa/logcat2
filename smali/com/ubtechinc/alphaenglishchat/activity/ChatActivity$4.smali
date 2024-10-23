.class Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;
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
    .line 535
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 538
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 553
    :pswitch_0
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7, v10}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1902(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Z)Z

    .line 555
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$1902(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Z)Z

    .line 556
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2000(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    iget-object v9, v9, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->ubtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    invoke-static {v8, v9}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->getDomainManagerInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$902(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;)Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    .line 557
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$900(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->isAlive()Z

    move-result v7

    if-nez v7, :cond_0

    .line 558
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$900(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ubtechinc/alphaenglishchat/domain/DomainManager;->start()V

    goto :goto_0

    .line 562
    :pswitch_1
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2100(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    goto :goto_0

    .line 565
    :pswitch_2
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->speech_startRecognized(Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 566
    const-string v5, "recognize relust is correct"

    .line 567
    .local v5, "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    move-result-object v7

    const-string v8, "en_us"

    iget-object v9, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v9}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2200(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v5, v9}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->speech_startTTS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    .line 568
    const-string v7, ""

    const-string v8, "mRobot.speech_startRecognized()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    .end local v5    # "text":Ljava/lang/String;
    :pswitch_3
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    move-result-object v7

    const-string v8, "utf-8"

    invoke-virtual {v7, v8}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->readConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, "json":[Ljava/lang/String;
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2000(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v8, v9}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->getSpotifyInstance(Landroid/content/Context;Landroid/app/Activity;)Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2302(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;)Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    .line 573
    if-eqz v3, :cond_0

    .line 574
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    aget-object v8, v3, v10

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2400(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 575
    .local v6, "token":Ljava/lang/String;
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    aget-object v8, v3, v10

    invoke-static {v7, v8}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2500(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;Ljava/lang/String;)J

    move-result-wide v0

    .line 577
    .local v0, "expire":J
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2300(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, v0, v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->saveToken(Ljava/lang/String;Ljava/lang/String;J)V

    .line 578
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    goto/16 :goto_0

    .line 582
    .end local v0    # "expire":J
    .end local v3    # "json":[Ljava/lang/String;
    .end local v6    # "token":Ljava/lang/String;
    :pswitch_4
    const-string v7, "ChatActivity"

    const-string v8, "spotify have logined"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$2600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)V

    goto/16 :goto_0

    .line 586
    :pswitch_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    .line 587
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaActionList:Ljava/util/List;

    .line 588
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaDanceList:Ljava/util/List;

    .line 589
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaStoryList:Ljava/util/List;

    .line 590
    if-eqz v4, :cond_0

    .line 591
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 592
    .local v2, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 593
    const-string v8, "1"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 594
    sget-object v8, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaActionList:Ljava/util/List;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 595
    :cond_2
    const-string v8, "2"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 596
    sget-object v8, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaDanceList:Ljava/util/List;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 597
    :cond_3
    const-string v8, "3"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 598
    sget-object v8, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->mAlphaStoryList:Ljava/util/List;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 605
    .end local v2    # "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :pswitch_6
    iget-object v7, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-static {v7}, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;->access$600(Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;)Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;

    move-result-object v7

    iget-object v8, p0, Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity$4;->this$0:Lcom/ubtechinc/alphaenglishchat/activity/ChatActivity;

    invoke-virtual {v7, v8}, Lcom/ubtechinc/alpha2robot/Alpha2RobotApi;->action_getActionList(Lcom/ubtechinc/alpha2serverlib/interfaces/IAlpha2ActionListListener;)Lcom/ubtechinc/alpha2robot/constant/UbxErrorCode$API_EEROR_CODE;

    goto/16 :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
