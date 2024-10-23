.class public Lcom/ubtech/alpha2/core/db/model/Note;
.super Ljava/lang/Object;
.source "Note.java"


# instance fields
.field private comment:Ljava/lang/String;

.field private date:Ljava/util/Date;

.field private id:Ljava/lang/Long;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ubtech/alpha2/core/db/model/Note;->id:Ljava/lang/Long;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "comment"    # Ljava/lang/String;
    .param p4, "date"    # Ljava/util/Date;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ubtech/alpha2/core/db/model/Note;->id:Ljava/lang/Long;

    .line 38
    iput-object p2, p0, Lcom/ubtech/alpha2/core/db/model/Note;->text:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/ubtech/alpha2/core/db/model/Note;->comment:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/ubtech/alpha2/core/db/model/Note;->date:Ljava/util/Date;

    .line 41
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ubtech/alpha2/core/db/model/Note;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ubtech/alpha2/core/db/model/Note;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ubtech/alpha2/core/db/model/Note;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ubtech/alpha2/core/db/model/Note;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ubtech/alpha2/core/db/model/Note;->comment:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ubtech/alpha2/core/db/model/Note;->date:Ljava/util/Date;

    .line 78
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ubtech/alpha2/core/db/model/Note;->id:Ljava/lang/Long;

    .line 49
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ubtech/alpha2/core/db/model/Note;->text:Ljava/lang/String;

    .line 62
    return-void
.end method
