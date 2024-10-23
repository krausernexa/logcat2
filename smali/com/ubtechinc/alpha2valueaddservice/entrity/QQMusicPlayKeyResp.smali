.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicPlayKeyResp;
.super Ljava/lang/Object;
.source "QQMusicPlayKeyResp.java"


# instance fields
.field private code:I

.field private sip:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSip;


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
    .line 8
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicPlayKeyResp;->code:I

    return v0
.end method

.method public getSip()Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSip;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicPlayKeyResp;->sip:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSip;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicPlayKeyResp;->code:I

    .line 12
    return-void
.end method

.method public setSip(Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSip;)V
    .locals 0
    .param p1, "sip"    # Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSip;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicPlayKeyResp;->sip:Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSip;

    .line 18
    return-void
.end method
