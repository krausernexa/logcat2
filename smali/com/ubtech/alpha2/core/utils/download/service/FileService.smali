.class public Lcom/ubtech/alpha2/core/utils/download/service/FileService;
.super Ljava/lang/Object;
.source "FileService.java"


# instance fields
.field private openHelper:Lcom/ubtech/alpha2/core/utils/download/service/DBOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/ubtech/alpha2/core/utils/download/service/DBOpenHelper;

    invoke-direct {v0, p1}, Lcom/ubtech/alpha2/core/utils/download/service/DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ubtech/alpha2/core/utils/download/service/FileService;->openHelper:Lcom/ubtech/alpha2/core/utils/download/service/DBOpenHelper;

    .line 18
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/service/FileService;->openHelper:Lcom/ubtech/alpha2/core/utils/download/service/DBOpenHelper;

    invoke-virtual {v1}, Lcom/ubtech/alpha2/core/utils/download/service/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 85
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete from filedownlog where downpath=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 88
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 27
    iget-object v3, p0, Lcom/ubtech/alpha2/core/utils/download/service/FileService;->openHelper:Lcom/ubtech/alpha2/core/utils/download/service/DBOpenHelper;

    invoke-virtual {v3}, Lcom/ubtech/alpha2/core/utils/download/service/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 28
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "select threadid, downlength from filedownlog where downpath=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    .line 29
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 32
    .local v0, "cursor":Landroid/database/Cursor;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 37
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 38
    return-object v1
.end method

.method public save(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/ubtech/alpha2/core/utils/download/service/FileService;->openHelper:Lcom/ubtech/alpha2/core/utils/download/service/DBOpenHelper;

    invoke-virtual {v2}, Lcom/ubtech/alpha2/core/utils/download/service/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 50
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 52
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 53
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v3, "insert into filedownlog(downpath, threadid, downlength) values(?,?,?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    .line 53
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 59
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 57
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 61
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 62
    return-void
.end method

.method public update(Ljava/lang/String;II)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "threadId"    # I
    .param p3, "pos"    # I

    .prologue
    .line 71
    iget-object v1, p0, Lcom/ubtech/alpha2/core/utils/download/service/FileService;->openHelper:Lcom/ubtech/alpha2/core/utils/download/service/DBOpenHelper;

    invoke-virtual {v1}, Lcom/ubtech/alpha2/core/utils/download/service/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "update filedownlog set downlength=? where downpath=? and threadid=?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 74
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 76
    return-void
.end method
