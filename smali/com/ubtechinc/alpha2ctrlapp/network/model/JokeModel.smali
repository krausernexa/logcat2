.class public Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;
.super Ljava/lang/Object;
.source "JokeModel.java"


# instance fields
.field private jokeContext:Ljava/lang/String;

.field private jokeLanguage:Ljava/lang/String;

.field private jokeTitle:Ljava/lang/String;

.field private jokeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJokeContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;->jokeContext:Ljava/lang/String;

    return-object v0
.end method

.method public getJokeLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;->jokeLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getJokeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;->jokeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getJokeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;->jokeType:Ljava/lang/String;

    return-object v0
.end method

.method public setJokeContext(Ljava/lang/String;)V
    .locals 0
    .param p1, "jokeContext"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;->jokeContext:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setJokeLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "jokeLanguage"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;->jokeLanguage:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setJokeTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "jokeTitle"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;->jokeTitle:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setJokeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "jokeType"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ubtechinc/alpha2ctrlapp/network/model/JokeModel;->jokeType:Ljava/lang/String;

    .line 23
    return-void
.end method
