.class public Lcom/ubtechinc/alphaenglishchat/music/spotify/entrity/RefreshTokenResult;
.super Ljava/lang/Object;
.source "RefreshTokenResult.java"


# instance fields
.field private access_token:Ljava/lang/String;

.field private expires_in:I

.field private token_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccess_token()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/entrity/RefreshTokenResult;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires_in()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/entrity/RefreshTokenResult;->expires_in:I

    return v0
.end method

.method public getToken_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/entrity/RefreshTokenResult;->token_type:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .locals 0
    .param p1, "access_token"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/entrity/RefreshTokenResult;->access_token:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public setExpires_in(I)V
    .locals 0
    .param p1, "expires_in"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/entrity/RefreshTokenResult;->expires_in:I

    .line 26
    return-void
.end method

.method public setToken_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "token_type"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ubtechinc/alphaenglishchat/music/spotify/entrity/RefreshTokenResult;->token_type:Ljava/lang/String;

    .line 20
    return-void
.end method
