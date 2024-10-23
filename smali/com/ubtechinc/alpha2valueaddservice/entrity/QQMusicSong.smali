.class public Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;
.super Ljava/lang/Object;
.source "QQMusicSong.java"


# instance fields
.field private curnum:I

.field private curpage:I

.field private list:[Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicList;

.field private totalnum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurnum()I
    .locals 1

    .prologue
    .line 10
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;->curnum:I

    return v0
.end method

.method public getCurpage()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;->curpage:I

    return v0
.end method

.method public getList()[Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicList;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;->list:[Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicList;

    return-object v0
.end method

.method public getTotalnum()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;->totalnum:I

    return v0
.end method

.method public setCurnum(I)V
    .locals 0
    .param p1, "curnum"    # I

    .prologue
    .line 13
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;->curnum:I

    .line 14
    return-void
.end method

.method public setCurpage(I)V
    .locals 0
    .param p1, "curpage"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;->curpage:I

    .line 20
    return-void
.end method

.method public setList([Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicList;)V
    .locals 0
    .param p1, "list"    # [Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicList;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;->list:[Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicList;

    .line 26
    return-void
.end method

.method public setTotalnum(I)V
    .locals 0
    .param p1, "totalnum"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/ubtechinc/alpha2valueaddservice/entrity/QQMusicSong;->totalnum:I

    .line 32
    return-void
.end method
