.class public Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;
.super Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;
.source "MusicDomain.java"

# interfaces
.implements Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;
.implements Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;


# static fields
.field private static final REQUEST_CODE:I = 0x539

.field private static musicDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;

.field private static parseResult:Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

.field private static sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;


# instance fields
.field private isTTSActionBusy:Z

.field private mContext:Landroid/content/Context;

.field private mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

.field private observatory:Lcom/ubtechinc/alpha2valueaddservice/weather/Interface/Observatory;

.field private threadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->musicDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/Interface/BaseDomain;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->isTTSActionBusy:Z

    .line 51
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->setBusy(Z)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->threadList:Ljava/util/ArrayList;

    .line 54
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->initSpotify()V

    .line 55
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public static getMusicDomainInstance(Landroid/content/Context;Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;)Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .prologue
    .line 65
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->musicDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->musicDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;

    .line 67
    sput-object p1, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    .line 69
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->musicDomainInstance:Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;

    return-object v0
.end method

.method private initSpotify()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->getSpotifyInstance(Landroid/content/Context;Landroid/app/Activity;)Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    .line 60
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-virtual {v0, p0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->registerResultListener(Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicSearchResultListener;)V

    .line 61
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-virtual {v0, p0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->registerStateListener(Lcom/ubtechinc/alphaenglishchat/music/Interface/IMusicStateListener;)V

    .line 62
    return-void
.end method

.method private notifyLogin()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ubtechinc.notify.login"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "intent2":Landroid/content/Intent;
    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method private processAction(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 147
    const-string v0, "succ"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {p0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->setBusy(Z)V

    .line 149
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->onSkipToNext()Z

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    const-string v0, "prec"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->setBusy(Z)V

    .line 152
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->onSkipToPrevious()Z

    goto :goto_0

    .line 153
    :cond_2
    const-string v0, "Stop"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->setBusy(Z)V

    .line 155
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;->onPause()V

    goto :goto_0
.end method


# virtual methods
.method public cancelAction()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onEventBackground(Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 195
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/eventbus/abstractclass/BaseEvent;->getmCmdID()I

    move-result v1

    .line 196
    .local v1, "cmdID":I
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cmdID ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    move-object v2, p1

    .line 198
    check-cast v2, Lcom/ubtechinc/alphaenglishchat/eventbus/TTSEvent;

    .line 199
    .local v2, "ttsEvent":Lcom/ubtechinc/alphaenglishchat/eventbus/TTSEvent;
    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/eventbus/TTSEvent;->getmState()I

    move-result v3

    if-nez v3, :cond_1

    .line 200
    iput-boolean v7, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->isTTSActionBusy:Z

    .line 212
    .end local v2    # "ttsEvent":Lcom/ubtechinc/alphaenglishchat/eventbus/TTSEvent;
    :cond_0
    :goto_0
    return-void

    .line 202
    .restart local v2    # "ttsEvent":Lcom/ubtechinc/alphaenglishchat/eventbus/TTSEvent;
    :cond_1
    iput-boolean v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->isTTSActionBusy:Z

    goto :goto_0

    .line 204
    .end local v2    # "ttsEvent":Lcom/ubtechinc/alphaenglishchat/eventbus/TTSEvent;
    :cond_2
    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    move-object v0, p1

    .line 205
    check-cast v0, Lcom/ubtechinc/alphaenglishchat/eventbus/ActionEvent;

    .line 206
    .local v0, "actionEvent":Lcom/ubtechinc/alphaenglishchat/eventbus/ActionEvent;
    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/eventbus/ActionEvent;->getmState()I

    move-result v3

    if-nez v3, :cond_3

    .line 207
    iput-boolean v7, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->isTTSActionBusy:Z

    goto :goto_0

    .line 209
    :cond_3
    iput-boolean v6, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->isTTSActionBusy:Z

    goto :goto_0
.end method

.method public onMusicSearchResultFail()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->sUbtApiHandler:Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;

    const-string v1, "Sorry, I don\'t find that song."

    invoke-interface {v0, v1, v2}, Lcom/ubtechinc/alphaenglishchat/Interface/UbtApiHandler;->start_TTS(Ljava/lang/String;Z)V

    .line 137
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->notifyLogin()V

    .line 138
    invoke-virtual {p0, v2}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->setBusy(Z)V

    .line 139
    return-void
.end method

.method public onMusicSearchResultSuccess()V
    .locals 2

    .prologue
    .line 128
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->setBusy(Z)V

    .line 129
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/domain/action/music/PlayAction;

    iget-object v1, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-direct {v0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/action/music/PlayAction;-><init>(Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;)V

    .line 130
    .local v0, "playAction":Lcom/ubtechinc/alphaenglishchat/domain/action/music/PlayAction;
    invoke-virtual {v0}, Lcom/ubtechinc/alphaenglishchat/domain/action/music/PlayAction;->start()V

    .line 131
    return-void
.end method

.method public onPlayFinish()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->setBusy(Z)V

    .line 191
    return-void
.end method

.method public onPlayPause()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onPlayResume()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onPlayStart()V
    .locals 2

    .prologue
    .line 167
    const-string v0, ""

    const-string v1, "onPlayStop 2 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyMusicState(I)V

    .line 169
    return-void
.end method

.method public onPlayStop()V
    .locals 2

    .prologue
    .line 183
    const-string v0, ""

    const-string v1, "onPlayStop 2 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->setBusy(Z)V

    .line 185
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyMusicState(I)V

    .line 186
    return-void
.end method

.method public process(Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V
    .locals 5
    .param p1, "result"    # Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;

    .prologue
    .line 78
    const-string v3, "Search"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v0

    .line 80
    .local v0, "conceptValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "MUSIC_SONG"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ARTIST"

    .line 81
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->setBusy(Z)V

    .line 83
    new-instance v2, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->mSpotify:Lcom/ubtechinc/alphaenglishchat/music/spotify/Spotify;

    invoke-direct {v2, v3, p1}, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;-><init>(Lcom/ubtechinc/alphaenglishchat/music/Interface/MusicEngine;Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;)V

    .line 84
    .local v2, "searchAction":Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;
    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;->start()V

    .line 117
    .end local v0    # "conceptValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "searchAction":Lcom/ubtechinc/alphaenglishchat/domain/action/music/SearchAction;
    :cond_1
    :goto_0
    return-void

    .line 86
    .restart local v0    # "conceptValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v0    # "conceptValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v3, "Control"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 89
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getConceptValue()Ljava/util/HashMap;

    move-result-object v0

    .line 90
    .restart local v0    # "conceptValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "GENERIC_ORDER"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    const-string v3, "GENERIC_ORDER"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    .local v1, "order":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->processAction(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    .end local v1    # "order":Ljava/lang/String;
    :cond_4
    const-string v3, "VOLUME_LEVEL"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v0    # "conceptValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string v3, "Interrupt"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 99
    const-string v3, "Stop"

    invoke-direct {p0, v3}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->processAction(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_6
    const-string v3, "Wakeup"

    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 101
    const-string v3, "Stop"

    invoke-direct {p0, v3}, Lcom/ubtechinc/alphaenglishchat/domain/MusicDomain;->processAction(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_7
    invoke-virtual {p1}, Lcom/ubtechinc/alphaenglishchat/resultEntity/ParseResult;->getSentence()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ubtechinc/alphaenglishchat/eventbus/EventbusUtil;->NotifyApiAi(Ljava/lang/String;)V

    goto :goto_0
.end method
