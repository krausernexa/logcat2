.class public Lcom/ubtechinc/service/model/SaveSpotifyToken;
.super Ljava/lang/Object;
.source "SaveSpotifyToken.java"


# annotations
.annotation runtime Lorg/msgpack/annotation/Message;
.end annotation


# instance fields
.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/ubtechinc/service/model/SaveSpotifyToken;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public setmToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "mToken"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/ubtechinc/service/model/SaveSpotifyToken;->mToken:Ljava/lang/String;

    .line 15
    return-void
.end method
