.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/request/JokeRequest;
.super Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;
.source "JokeRequest.java"


# instance fields
.field private jokeType:I

.field private systemLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getJokeType()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/JokeRequest;->jokeType:I

    return v0
.end method

.method public getSystemLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/JokeRequest;->systemLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public setJokeType(I)V
    .locals 0
    .param p1, "jokeType"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/JokeRequest;->jokeType:I

    .line 27
    return-void
.end method

.method public setSystemLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemLanguage"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/request/JokeRequest;->systemLanguage:Ljava/lang/String;

    .line 19
    return-void
.end method
