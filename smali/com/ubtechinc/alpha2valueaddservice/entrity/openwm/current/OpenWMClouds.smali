.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;
.super Ljava/lang/Object;
.source "OpenWMClouds.java"


# instance fields
.field private all:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAll()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;->all:I

    return v0
.end method

.method public setAll(I)V
    .locals 0
    .param p1, "all"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMClouds;->all:I

    .line 13
    return-void
.end method
