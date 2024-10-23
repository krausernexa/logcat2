.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicZhida;
.super Ljava/lang/Object;
.source "QQMusicZhida.java"


# instance fields
.field private chinesesinger:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChinesesinger()I
    .locals 1

    .prologue
    .line 9
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicZhida;->chinesesinger:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicZhida;->type:I

    return v0
.end method

.method public setChinesesinger(I)V
    .locals 0
    .param p1, "chinesesinger"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicZhida;->chinesesinger:I

    .line 13
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicZhida;->type:I

    .line 19
    return-void
.end method
