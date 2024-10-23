.class public Lcom/ubtechinc/db/AppDao;
.super Ljava/lang/Object;
.source "AppDao.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearData(Landroid/content/Context;)I
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 145
    const-class v2, Lcom/ubtechinc/db/AppDao;

    monitor-enter v2

    const/4 v0, -0x1

    .line 147
    .local v0, "c":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/ubtechinc/db/provider/Provider$Alpha2AppColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 152
    :goto_0
    monitor-exit v2

    return v0

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 149
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized delete(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 67
    const-class v2, Lcom/ubtechinc/db/AppDao;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/ubtechinc/db/provider/Provider$Alpha2AppColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "appid =? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 71
    .local v0, "c":I
    monitor-exit v2

    return v0

    .line 67
    .end local v0    # "c":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getTopApp(Landroid/content/Context;)Lcom/ubtechinc/db/pojos/Alpha2App;
    .locals 9
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 118
    const-class v8, Lcom/ubtechinc/db/AppDao;

    monitor-enter v8

    if-nez p0, :cond_1

    .line 141
    :cond_0
    :goto_0
    monitor-exit v8

    return-object v7

    .line 122
    :cond_1
    const/4 v6, 0x0

    .line 124
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/ubtechinc/db/provider/Provider$Alpha2AppColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "appid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 128
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    new-instance v7, Lcom/ubtechinc/db/pojos/Alpha2App;

    invoke-direct {v7}, Lcom/ubtechinc/db/pojos/Alpha2App;-><init>()V

    .line 130
    .local v7, "p":Lcom/ubtechinc/db/pojos/Alpha2App;
    const-string v0, "name"

    .line 131
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 130
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/ubtechinc/db/pojos/Alpha2App;->name:Ljava/lang/String;

    .line 132
    const-string v0, "appid"

    .line 133
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 132
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/ubtechinc/db/pojos/Alpha2App;->appid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    if-eqz v6, :cond_0

    .line 138
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    .end local v7    # "p":Lcom/ubtechinc/db/pojos/Alpha2App;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 137
    :cond_2
    if-eqz v6, :cond_0

    .line 138
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 137
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_3

    .line 138
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static declared-synchronized insert(Landroid/content/Context;Lcom/ubtechinc/db/pojos/Alpha2App;)I
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "alpha2App"    # Lcom/ubtechinc/db/pojos/Alpha2App;

    .prologue
    .line 37
    const-class v4, Lcom/ubtechinc/db/AppDao;

    monitor-enter v4

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 38
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "name"

    iget-object v5, p1, Lcom/ubtechinc/db/pojos/Alpha2App;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v3, "appid"

    iget-object v5, p1, Lcom/ubtechinc/db/pojos/Alpha2App;->appid:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/ubtechinc/db/provider/Provider$Alpha2AppColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 42
    .local v1, "uri":Landroid/net/Uri;
    const-string v3, "DbDao"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "lastPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const-string v3, "DbDao"

    const-string v5, "insert failure!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    monitor-exit v4

    return v3

    .line 47
    :cond_0
    :try_start_1
    const-string v3, "DbDao"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert success! the id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    .end local v0    # "lastPath":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "appid"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v4, Lcom/ubtechinc/db/AppDao;

    monitor-enter v4

    :try_start_0
    invoke-static {p0, p2}, Lcom/ubtechinc/db/AppDao;->isExist(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 56
    .local v1, "isExist":Z
    if-eqz v1, :cond_0

    .line 57
    const/4 v0, -0x1

    .line 63
    :goto_0
    monitor-exit v4

    return v0

    .line 59
    :cond_0
    :try_start_1
    new-instance v2, Lcom/ubtechinc/db/pojos/Alpha2App;

    invoke-direct {v2}, Lcom/ubtechinc/db/pojos/Alpha2App;-><init>()V

    .line 60
    .local v2, "p":Lcom/ubtechinc/db/pojos/Alpha2App;
    iput-object p1, v2, Lcom/ubtechinc/db/pojos/Alpha2App;->name:Ljava/lang/String;

    .line 61
    iput-object p2, v2, Lcom/ubtechinc/db/pojos/Alpha2App;->appid:Ljava/lang/String;

    .line 62
    invoke-static {p0, v2}, Lcom/ubtechinc/db/AppDao;->insert(Landroid/content/Context;Lcom/ubtechinc/db/pojos/Alpha2App;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 63
    .local v0, "id":I
    goto :goto_0

    .line 55
    .end local v0    # "id":I
    .end local v1    # "isExist":Z
    .end local v2    # "p":Lcom/ubtechinc/db/pojos/Alpha2App;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static declared-synchronized isExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 17
    const-class v9, Lcom/ubtechinc/db/AppDao;

    monitor-enter v9

    const/4 v6, 0x0

    .line 19
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/ubtechinc/db/provider/Provider$Alpha2AppColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "appid"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 25
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    if-eqz v6, :cond_0

    .line 30
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    move v0, v7

    .line 33
    :goto_0
    monitor-exit v9

    return v0

    .line 29
    :cond_1
    if-eqz v6, :cond_2

    .line 30
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 33
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 30
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    :catchall_1
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized query(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mAppid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 87
    const-class v10, Lcom/ubtechinc/db/AppDao;

    monitor-enter v10

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v0, v8

    .line 107
    :goto_0
    monitor-exit v10

    return v0

    .line 91
    :cond_0
    const/4 v6, 0x0

    .line 93
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/ubtechinc/db/provider/Provider$Alpha2AppColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "appid"

    aput-object v4, v2, v3

    const-string v3, "appid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 99
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    new-instance v7, Lcom/ubtechinc/db/pojos/Alpha2App;

    invoke-direct {v7}, Lcom/ubtechinc/db/pojos/Alpha2App;-><init>()V

    .line 101
    .local v7, "p":Lcom/ubtechinc/db/pojos/Alpha2App;
    const-string v0, "name"

    .line 102
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 101
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/ubtechinc/db/pojos/Alpha2App;->name:Ljava/lang/String;

    .line 103
    const-string v0, "appid"

    .line 104
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 103
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/ubtechinc/db/pojos/Alpha2App;->appid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    if-eqz v6, :cond_1

    .line 111
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    .line 105
    goto :goto_0

    .line 110
    .end local v7    # "p":Lcom/ubtechinc/db/pojos/Alpha2App;
    :cond_2
    if-eqz v6, :cond_3

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 107
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 111
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    :catchall_1
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "appid"    # Ljava/lang/String;
    .param p3, "newName"    # Ljava/lang/String;
    .param p4, "newAppid"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v3, Lcom/ubtechinc/db/AppDao;

    monitor-enter v3

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 77
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "appid"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/ubtechinc/db/provider/Provider$Alpha2AppColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "appid =? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 83
    .local v0, "c":I
    monitor-exit v3

    return-void

    .line 76
    .end local v0    # "c":I
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
