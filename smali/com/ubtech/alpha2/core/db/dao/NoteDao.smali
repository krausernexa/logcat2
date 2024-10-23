.class public Lcom/ubtech/alpha2/core/db/dao/NoteDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "NoteDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtech/alpha2/core/db/dao/NoteDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/ubtech/alpha2/core/db/model/Note;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "NOTE"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/ubtech/alpha2/core/db/DaoSession;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/ubtech/alpha2/core/db/DaoSession;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 57
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 61
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 62
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'NOTE\' (\'_id\' INTEGER PRIMARY KEY ,\'TEXT\' TEXT NOT NULL ,\'COMMENT\' TEXT,\'DATE\' INTEGER);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    return-void

    .line 61
    .end local v0    # "constraint":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static dropTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifExists"    # Z

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v1, "IF EXISTS "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'NOTE\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    return-void

    .line 71
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/ubtech/alpha2/core/db/model/Note;)V
    .locals 6
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/ubtech/alpha2/core/db/model/Note;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 80
    invoke-virtual {p2}, Lcom/ubtech/alpha2/core/db/model/Note;->getId()Ljava/lang/Long;

    move-result-object v2

    .line 81
    .local v2, "id":Ljava/lang/Long;
    if-eqz v2, :cond_0

    .line 82
    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 84
    :cond_0
    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/ubtech/alpha2/core/db/model/Note;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Lcom/ubtech/alpha2/core/db/model/Note;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "comment":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 88
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 91
    :cond_1
    invoke-virtual {p2}, Lcom/ubtech/alpha2/core/db/model/Note;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 92
    .local v1, "date":Ljava/util/Date;
    if-eqz v1, :cond_2

    .line 93
    const/4 v3, 0x4

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 95
    :cond_2
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p2, Lcom/ubtech/alpha2/core/db/model/Note;

    invoke-virtual {p0, p1, p2}, Lcom/ubtech/alpha2/core/db/dao/NoteDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/ubtech/alpha2/core/db/model/Note;)V

    return-void
.end method

.method public getKey(Lcom/ubtech/alpha2/core/db/model/Note;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/ubtech/alpha2/core/db/model/Note;

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/ubtech/alpha2/core/db/model/Note;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, Lcom/ubtech/alpha2/core/db/model/Note;

    invoke-virtual {p0, p1}, Lcom/ubtech/alpha2/core/db/dao/NoteDao;->getKey(Lcom/ubtech/alpha2/core/db/model/Note;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/ubtech/alpha2/core/db/model/Note;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/ubtech/alpha2/core/db/model/Note;

    add-int/lit8 v1, p2, 0x0

    .line 108
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 109
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, p2, 0x2

    .line 110
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    :goto_1
    add-int/lit8 v5, p2, 0x3

    .line 111
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 112
    :goto_2
    invoke-direct {v0, v1, v4, v3, v2}, Lcom/ubtech/alpha2/core/db/model/Note;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 114
    .local v0, "entity":Lcom/ubtech/alpha2/core/db/model/Note;
    return-object v0

    .line 108
    .end local v0    # "entity":Lcom/ubtech/alpha2/core/db/model/Note;
    :cond_0
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 110
    :cond_1
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 111
    :cond_2
    new-instance v2, Ljava/util/Date;

    add-int/lit8 v5, p2, 0x3

    .line 112
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    goto :goto_2
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/ubtech/alpha2/core/db/dao/NoteDao;->readEntity(Landroid/database/Cursor;I)Lcom/ubtech/alpha2/core/db/model/Note;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/ubtech/alpha2/core/db/model/Note;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/ubtech/alpha2/core/db/model/Note;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 120
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/ubtech/alpha2/core/db/model/Note;->setId(Ljava/lang/Long;)V

    .line 122
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ubtech/alpha2/core/db/model/Note;->setText(Ljava/lang/String;)V

    .line 123
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Lcom/ubtech/alpha2/core/db/model/Note;->setComment(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p2, v1}, Lcom/ubtech/alpha2/core/db/model/Note;->setDate(Ljava/util/Date;)V

    .line 127
    return-void

    .line 120
    :cond_0
    add-int/lit8 v0, p3, 0x0

    .line 121
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_1
    add-int/lit8 v0, p3, 0x2

    .line 124
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 125
    :cond_2
    new-instance v1, Ljava/util/Date;

    add-int/lit8 v0, p3, 0x3

    .line 126
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_2
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 32
    check-cast p2, Lcom/ubtech/alpha2/core/db/model/Note;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ubtech/alpha2/core/db/dao/NoteDao;->readEntity(Landroid/database/Cursor;Lcom/ubtech/alpha2/core/db/model/Note;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 100
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/ubtech/alpha2/core/db/dao/NoteDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/ubtech/alpha2/core/db/model/Note;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/ubtech/alpha2/core/db/model/Note;
    .param p2, "rowId"    # J

    .prologue
    .line 132
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ubtech/alpha2/core/db/model/Note;->setId(Ljava/lang/Long;)V

    .line 133
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 32
    check-cast p1, Lcom/ubtech/alpha2/core/db/model/Note;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ubtech/alpha2/core/db/dao/NoteDao;->updateKeyAfterInsert(Lcom/ubtech/alpha2/core/db/model/Note;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
