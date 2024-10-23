.class public Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;
.super Ljava/lang/Object;
.source "QQMusicPlayInfo.java"


# instance fields
.field private id:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;->id:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/qq/QQMusicPlayInfo;->key:Ljava/lang/String;

    .line 20
    return-void
.end method
