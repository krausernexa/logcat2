.class public Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;
.super Ljava/lang/Object;
.source "EventbusUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NotifyActionState(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 52
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/eventbus/ActionEvent;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/eventbus/ActionEvent;-><init>()V

    .line 53
    .local v0, "event":Lcom/ubtechinc/alphaenglishchat/eventbus/ActionEvent;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alphaenglishchat/eventbus/ActionEvent;->setmCmdID(I)V

    .line 54
    invoke-virtual {v0, p0}, Lcom/ubtechinc/alphaenglishchat/eventbus/ActionEvent;->setmState(I)V

    .line 55
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public static NotifyApiAi(ILjava/lang/String;)V
    .locals 2
    .param p0, "cmdId"    # I
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;-><init>()V

    .line 25
    .local v0, "event":Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;
    invoke-virtual {v0, p0}, Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;->setmCmdID(I)V

    .line 26
    invoke-virtual {v0, p1}, Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;->setmObject(Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static NotifyApiAi(Ljava/lang/String;)V
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 17
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;-><init>()V

    .line 18
    .local v0, "event":Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;->setmCmdID(I)V

    .line 19
    invoke-virtual {v0, p0}, Lcom/ubtechinc/alphaenglishchat/eventbus/NoResultEvent;->setmObject(Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public static NotifyHintMusicState(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 66
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;-><init>()V

    .line 67
    .local v0, "event":Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;->setmCmdID(I)V

    .line 68
    invoke-virtual {v0, p0}, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;->setmState(I)V

    .line 69
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public static NotifyMusicState(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 31
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;-><init>()V

    .line 32
    .local v0, "event":Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;->setmCmdID(I)V

    .line 33
    invoke-virtual {v0, p0}, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;->setmState(I)V

    .line 34
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static NotifyMusicState(II)V
    .locals 2
    .param p0, "cmdId"    # I
    .param p1, "state"    # I

    .prologue
    .line 38
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;-><init>()V

    .line 39
    .local v0, "event":Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;
    invoke-virtual {v0, p0}, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;->setmCmdID(I)V

    .line 40
    invoke-virtual {v0, p1}, Lcom/ubtechinc/alphaenglishchat/eventbus/MusicEvent;->setmState(I)V

    .line 41
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public static NotifyPhotoState(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 59
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/eventbus/TakePhotoEvent;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/eventbus/TakePhotoEvent;-><init>()V

    .line 60
    .local v0, "event":Lcom/ubtechinc/alphaenglishchat/eventbus/TakePhotoEvent;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alphaenglishchat/eventbus/TakePhotoEvent;->setmCmdID(I)V

    .line 61
    invoke-virtual {v0, p0}, Lcom/ubtechinc/alphaenglishchat/eventbus/TakePhotoEvent;->setmState(I)V

    .line 62
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static NotifyTTSState(I)V
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 45
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/eventbus/TTSEvent;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/eventbus/TTSEvent;-><init>()V

    .line 46
    .local v0, "event":Lcom/ubtechinc/alphaenglishchat/eventbus/TTSEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ubtechinc/alphaenglishchat/eventbus/TTSEvent;->setmCmdID(I)V

    .line 47
    invoke-virtual {v0, p0}, Lcom/ubtechinc/alphaenglishchat/eventbus/TTSEvent;->setmState(I)V

    .line 48
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
