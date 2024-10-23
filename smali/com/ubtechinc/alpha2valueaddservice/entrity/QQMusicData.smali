.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;
.super Ljava/lang/Object;
.source "QQMusicData.java"


# instance fields
.field private keyword:Ljava/lang/String;

.field private priority:I

.field private qc:[Ljava/lang/String;

.field private semantic:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;

.field private song:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;

.field private totaltime:D

.field private zhida:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicZhida;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->priority:I

    return v0
.end method

.method public getQc()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->qc:[Ljava/lang/String;

    return-object v0
.end method

.method public getSemantic()Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->semantic:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;

    return-object v0
.end method

.method public getSong()Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->song:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;

    return-object v0
.end method

.method public getTotaltime()D
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->totaltime:D

    return-wide v0
.end method

.method public getZhida()Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicZhida;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->zhida:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicZhida;

    return-object v0
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->keyword:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->priority:I

    .line 23
    return-void
.end method

.method public setQc([Ljava/lang/String;)V
    .locals 0
    .param p1, "qc"    # [Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->qc:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setSemantic(Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;)V
    .locals 0
    .param p1, "semantic"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->semantic:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;

    .line 35
    return-void
.end method

.method public setSong(Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;)V
    .locals 0
    .param p1, "song"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->song:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;

    .line 41
    return-void
.end method

.method public setTotaltime(D)V
    .locals 1
    .param p1, "totaltime"    # D

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->totaltime:D

    .line 47
    return-void
.end method

.method public setZhida(Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicZhida;)V
    .locals 0
    .param p1, "zhida"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicZhida;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;->zhida:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicZhida;

    .line 53
    return-void
.end method
