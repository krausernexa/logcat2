.class public Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;
.super Ljava/lang/Object;
.source "QQMusicSource.java"


# static fields
.field private static commonTTPodMusicSource:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;


# instance fields
.field private mContext:Landroid/content/Context;

.field private qqMusicPlayInfo:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;

.field private rpm:Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->commonTTPodMusicSource:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->mContext:Landroid/content/Context;

    .line 22
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;

    invoke-direct {v0}, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->qqMusicPlayInfo:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;

    .line 23
    new-instance v0, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;

    invoke-direct {v0}, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;-><init>()V

    iput-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->rpm:Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;)Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;
    .locals 1
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->qqMusicPlayInfo:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->playMusic()V

    return-void
.end method

.method static synthetic access$200(Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;)V
    .locals 0
    .param p0, "x0"    # Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->getPlayKey()V

    return-void
.end method

.method public static getForBroadlinkInstance(Landroid/content/Context;)Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->commonTTPodMusicSource:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;

    invoke-direct {v0, p0}, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->commonTTPodMusicSource:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;

    .line 30
    :cond_0
    sget-object v0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->commonTTPodMusicSource:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;

    return-object v0
.end method

.method private getPlayKey()V
    .locals 4

    .prologue
    .line 66
    const-string v1, "http://base.music.qq.com/fcgi-bin/fcg_musicexpress.fcg?json=3&loginUin={0}&format=jsonp&inCharset=GB2312&outCharset=GB2312&notice=0&platform=yqq&needNewCode=0"

    .line 70
    .local v1, "request":Ljava/lang/String;
    new-instance v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;

    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource$2;

    invoke-direct {v3, p0}, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource$2;-><init>(Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;)V

    invoke-direct {v0, v2, v3}, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;-><init>(Landroid/content/Context;Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;)V

    .line 84
    .local v0, "action":Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;
    invoke-virtual {v0, v1}, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->setParamerObj(Ljava/lang/String;)V

    .line 85
    const/16 v2, 0x2712

    invoke-virtual {v0, v2}, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->doRequest(I)V

    .line 86
    return-void
.end method

.method private playMusic()V
    .locals 3

    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "http://cc.stream.qqmusic.qq.com/C200"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->qqMusicPlayInfo:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v2, ".m4a?vkey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->qqMusicPlayInfo:Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;

    invoke-virtual {v2}, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v2, "&fromtag=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "playUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->rpm:Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;

    invoke-virtual {v2, v0}, Lcom/ubtechinc/alpha2valueaddservice/PlayMusic/RobotPlayMusic;->playUrl(Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public searchQQMusic(Ljava/lang/String;)V
    .locals 5
    .param p1, "singerOrSong"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "http://s.music.qq.com/fcgi-bin/music_search_new_platform?t=0&n=2&aggr=1&cr=1&loginUin=0&format=json&inCharset=GB2312&outCharset=utf-8&notice=0&platform=jqminiframe.json&needNewCode=0&p=1&catZhida=0&remoteplace=sizer.newclient.next_song&w="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "request":Ljava/lang/String;
    new-instance v0, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;

    iget-object v3, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource$1;

    invoke-direct {v4, p0}, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource$1;-><init>(Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicSource;)V

    invoke-direct {v0, v3, v4}, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;-><init>(Landroid/content/Context;Lcom/ubtechinc/alpha2valueaddservice/network/ClientAuthorizeListener;)V

    .line 61
    .local v0, "action":Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;
    invoke-virtual {v0, v1}, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->setParamerObj(Ljava/lang/String;)V

    .line 62
    const/16 v3, 0x2711

    invoke-virtual {v0, v3, p1}, Lcom/ubtechinc/alpha2valueaddservice/network/NetworkAction;->doRequest(ILjava/lang/String;)V

    .line 63
    return-void
.end method
