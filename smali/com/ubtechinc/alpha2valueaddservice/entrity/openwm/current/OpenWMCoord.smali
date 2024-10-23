.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;
.super Ljava/lang/Object;
.source "OpenWMCoord.java"


# instance fields
.field private lat:D

.field private lon:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLat()D
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 8
    iget-wide v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;->lon:D

    return-wide v0
.end method

.method public setLat(D)V
    .locals 1
    .param p1, "lat"    # D

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;->lat:D

    .line 18
    return-void
.end method

.method public setLon(D)V
    .locals 1
    .param p1, "lon"    # D

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/openwm/current/OpenWMCoord;->lon:D

    .line 12
    return-void
.end method
