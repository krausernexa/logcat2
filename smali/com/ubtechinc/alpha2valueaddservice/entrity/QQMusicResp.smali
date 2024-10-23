.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;
.super Ljava/lang/Object;
.source "QQMusicResp.java"


# instance fields
.field private code:I

.field private data:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;

.field private message:Ljava/lang/String;

.field private notice:Ljava/lang/String;

.field private subcode:I

.field private time:J

.field private tips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->code:I

    return v0
.end method

.method public getData()Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->data:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNotice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->notice:Ljava/lang/String;

    return-object v0
.end method

.method public getSubcode()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->subcode:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->time:J

    return-wide v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->code:I

    .line 18
    return-void
.end method

.method public setData(Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;)V
    .locals 0
    .param p1, "data"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->data:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicData;

    .line 24
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->message:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setNotice(Ljava/lang/String;)V
    .locals 0
    .param p1, "notice"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->notice:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSubcode(I)V
    .locals 0
    .param p1, "subcode"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->subcode:I

    .line 42
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->time:J

    .line 48
    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 0
    .param p1, "tips"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicResp;->tips:Ljava/lang/String;

    .line 54
    return-void
.end method
