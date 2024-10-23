.class public Lcom/ubtechinc/db/ActionNameDao;
.super Ljava/lang/Object;
.source "ActionNameDao.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "ActionNameDao"

    sput-object v0, Lcom/ubtechinc/db/ActionNameDao;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearData(Landroid/content/Context;)I
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 173
    const-class v2, Lcom/ubtechinc/db/ActionNameDao;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/ubtechinc/db/provider/Provider$ActionNameColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 176
    .local v0, "c":I
    monitor-exit v2

    return v0

    .line 173
    .end local v0    # "c":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized delete(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 92
    const-class v2, Lcom/ubtechinc/db/ActionNameDao;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/ubtechinc/db/provider/Provider$ActionNameColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "action_id =? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 96
    .local v0, "c":I
    monitor-exit v2

    return v0

    .line 92
    .end local v0    # "c":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getActionID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .locals 19
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 299
    const-class v16, Lcom/ubtechinc/db/ActionNameDao;

    monitor-enter v16

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 300
    const/4 v14, 0x0

    .line 348
    :cond_0
    :goto_0
    monitor-exit v16

    return-object v14

    .line 303
    :cond_1
    const/4 v14, 0x0

    .line 304
    .local v14, "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    const/4 v12, 0x0

    .line 306
    .local v12, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "CN"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/ubtechinc/db/provider/Provider$ActionNameColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "action_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "action_type"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "action_cn_name"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "action_en_name"

    aput-object v6, v4, v5

    const-string v5, "action_cn_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 325
    :cond_2
    :goto_1
    if-eqz v12, :cond_5

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 326
    new-instance v15, Lcom/ubtechinc/db/pojos/Alpha2ActionName;

    invoke-direct {v15}, Lcom/ubtechinc/db/pojos/Alpha2ActionName;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 327
    .end local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .local v15, "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    :try_start_1
    const-string v2, "action_id"

    .line 328
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 327
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 329
    .local v10, "action_id":Ljava/lang/String;
    const-string v2, "action_type"

    .line 330
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 329
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 331
    .local v11, "action_type":Ljava/lang/String;
    const-string v2, "action_cn_name"

    .line 332
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 331
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 333
    .local v8, "action_cn_name":Ljava/lang/String;
    const-string v2, "action_en_name"

    .line 334
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 333
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 335
    .local v9, "action_en_name":Ljava/lang/String;
    iput-object v10, v15, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_id:Ljava/lang/String;

    .line 336
    iput-object v11, v15, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_type:Ljava/lang/String;

    .line 337
    iput-object v8, v15, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_cn_name:Ljava/lang/String;

    .line 338
    iput-object v9, v15, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_en_name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 345
    if-eqz v12, :cond_3

    .line 346
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_3
    move-object v14, v15

    .line 348
    goto/16 :goto_0

    .line 315
    .end local v8    # "action_cn_name":Ljava/lang/String;
    .end local v9    # "action_en_name":Ljava/lang/String;
    .end local v10    # "action_id":Ljava/lang/String;
    .end local v11    # "action_type":Ljava/lang/String;
    .end local v15    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .restart local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    :cond_4
    :try_start_3
    const-string v2, "EN"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/ubtechinc/db/provider/Provider$ActionNameColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "action_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "action_type"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "action_cn_name"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "action_en_name"

    aput-object v6, v4, v5

    const-string v5, "action_en_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v12

    goto/16 :goto_1

    .line 345
    :cond_5
    if-eqz v12, :cond_0

    .line 346
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 299
    :catchall_0
    move-exception v2

    :goto_2
    monitor-exit v16

    throw v2

    .line 342
    :catch_0
    move-exception v13

    .line 343
    .local v13, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 345
    if-eqz v12, :cond_0

    .line 346
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 345
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    :goto_4
    if-eqz v12, :cond_0

    .line 346
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 345
    .end local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .restart local v15    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    :catchall_2
    move-exception v2

    move-object v14, v15

    .end local v15    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .restart local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    goto :goto_4

    .line 342
    .end local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .restart local v15    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    :catch_1
    move-exception v13

    move-object v14, v15

    .end local v15    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .restart local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    goto :goto_3

    .line 299
    .end local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .restart local v8    # "action_cn_name":Ljava/lang/String;
    .restart local v9    # "action_en_name":Ljava/lang/String;
    .restart local v10    # "action_id":Ljava/lang/String;
    .restart local v11    # "action_type":Ljava/lang/String;
    .restart local v15    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    :catchall_3
    move-exception v2

    move-object v14, v15

    .end local v15    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .restart local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    goto :goto_2
.end method

.method public static declared-synchronized getAllAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 241
    const-class v14, Lcom/ubtechinc/db/ActionNameDao;

    monitor-enter v14

    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 242
    .local v13, "sb":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 244
    .local v10, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/ubtechinc/db/provider/Provider$ActionNameColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "action_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "action_type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "action_cn_name"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "action_en_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 251
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    new-instance v12, Lcom/ubtechinc/db/pojos/Alpha2ActionName;

    invoke-direct {v12}, Lcom/ubtechinc/db/pojos/Alpha2ActionName;-><init>()V

    .line 253
    .local v12, "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    const-string v0, "action_id"

    .line 254
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 253
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 255
    .local v8, "action_id":Ljava/lang/String;
    const-string v0, "action_type"

    .line 256
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 255
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 257
    .local v9, "action_type":Ljava/lang/String;
    const-string v0, "action_cn_name"

    .line 258
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 257
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, "action_cn_name":Ljava/lang/String;
    const-string v0, "action_en_name"

    .line 260
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 259
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "action_en_name":Ljava/lang/String;
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    const-string v0, "action_id"

    .line 270
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 269
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 271
    const-string v0, "action_type"

    .line 272
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 271
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 273
    const-string v0, "action_cn_name"

    .line 274
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 273
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 275
    const-string v0, "action_en_name"

    .line 276
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 275
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 278
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    .end local v6    # "action_cn_name":Ljava/lang/String;
    .end local v7    # "action_en_name":Ljava/lang/String;
    .end local v8    # "action_id":Ljava/lang/String;
    .end local v9    # "action_type":Ljava/lang/String;
    .end local v12    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    :catch_0
    move-exception v11

    .line 289
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    if-eqz v10, :cond_0

    .line 292
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_0
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .end local v11    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v14

    return-object v0

    .line 284
    .restart local v6    # "action_cn_name":Ljava/lang/String;
    .restart local v7    # "action_en_name":Ljava/lang/String;
    .restart local v8    # "action_id":Ljava/lang/String;
    .restart local v9    # "action_type":Ljava/lang/String;
    .restart local v12    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    :cond_1
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 291
    if-eqz v10, :cond_2

    .line 292
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 291
    .end local v6    # "action_cn_name":Ljava/lang/String;
    .end local v7    # "action_en_name":Ljava/lang/String;
    .end local v8    # "action_id":Ljava/lang/String;
    .end local v9    # "action_type":Ljava/lang/String;
    .end local v12    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    :cond_3
    if-eqz v10, :cond_4

    .line 292
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 291
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_5

    .line 292
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    goto :goto_1

    .line 241
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v0

    monitor-exit v14

    throw v0
.end method

.method public static declared-synchronized insert(Landroid/content/Context;Lcom/ubtechinc/db/pojos/Alpha2ActionName;)I
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "alpha2ActionName"    # Lcom/ubtechinc/db/pojos/Alpha2ActionName;

    .prologue
    .line 48
    const-class v5, Lcom/ubtechinc/db/ActionNameDao;

    monitor-enter v5

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "action_id"

    iget-object v6, p1, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_id:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v4, "action_type"

    iget-object v6, p1, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_type:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v4, "action_cn_name"

    iget-object v6, p1, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_cn_name:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v4, "action_en_name"

    iget-object v6, p1, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_en_name:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    const/4 v2, 0x0

    .line 55
    .local v2, "uri":Landroid/net/Uri;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/ubtechinc/db/provider/Provider$ActionNameColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 60
    :goto_0
    if-eqz v2, :cond_1

    .line 61
    :try_start_2
    sget-object v4, Lcom/ubtechinc/db/ActionNameDao;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "lastPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    sget-object v4, Lcom/ubtechinc/db/ActionNameDao;->TAG:Ljava/lang/String;

    const-string v6, "insert failure!"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 71
    .end local v1    # "lastPath":Ljava/lang/String;
    :goto_2
    monitor-exit v5

    return v4

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 66
    .restart local v1    # "lastPath":Ljava/lang/String;
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_4
    sget-object v4, Lcom/ubtechinc/db/ActionNameDao;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert success! the id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 71
    .end local v1    # "lastPath":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static declared-synchronized insert(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "actionID"    # Ljava/lang/String;
    .param p2, "actionType"    # I
    .param p3, "actionCNName"    # Ljava/lang/String;
    .param p4, "actionENName"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v4, Lcom/ubtechinc/db/ActionNameDao;

    monitor-enter v4

    :try_start_0
    invoke-static {p0, p1}, Lcom/ubtechinc/db/ActionNameDao;->isExist(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 79
    .local v2, "isExist":Z
    if-eqz v2, :cond_0

    .line 80
    const/4 v1, -0x1

    .line 88
    :goto_0
    monitor-exit v4

    return v1

    .line 82
    :cond_0
    :try_start_1
    new-instance v0, Lcom/ubtechinc/db/pojos/Alpha2ActionName;

    invoke-direct {v0}, Lcom/ubtechinc/db/pojos/Alpha2ActionName;-><init>()V

    .line 83
    .local v0, "alpha2ActionName":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    iput-object p1, v0, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_id:Ljava/lang/String;

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_type:Ljava/lang/String;

    .line 85
    iput-object p3, v0, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_cn_name:Ljava/lang/String;

    .line 86
    iput-object p4, v0, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_en_name:Ljava/lang/String;

    .line 87
    invoke-static {p0, v0}, Lcom/ubtechinc/db/ActionNameDao;->insert(Landroid/content/Context;Lcom/ubtechinc/db/pojos/Alpha2ActionName;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 88
    .local v1, "id":I
    goto :goto_0

    .line 78
    .end local v0    # "alpha2ActionName":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .end local v1    # "id":I
    .end local v2    # "isExist":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized isExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 26
    const-class v10, Lcom/ubtechinc/db/ActionNameDao;

    monitor-enter v10

    const/4 v6, 0x0

    .line 28
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/ubtechinc/db/provider/Provider$ActionNameColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "action_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "action_type"

    aput-object v4, v2, v3

    const-string v3, "action_id=?"

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

    .line 34
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    if-eqz v6, :cond_0

    .line 41
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move v0, v8

    .line 44
    :goto_0
    monitor-exit v10

    return v0

    .line 40
    :cond_1
    if-eqz v6, :cond_2

    .line 41
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    move v0, v9

    .line 44
    goto :goto_0

    .line 37
    :catch_0
    move-exception v7

    .line 38
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    if-eqz v6, :cond_2

    .line 41
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 26
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    .line 40
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_3

    .line 41
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static declared-synchronized query(Landroid/content/Context;Ljava/lang/String;)Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .locals 19
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "actionID"    # Ljava/lang/String;

    .prologue
    .line 129
    const-class v16, Lcom/ubtechinc/db/ActionNameDao;

    monitor-enter v16

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 130
    const/4 v14, 0x0

    .line 167
    :cond_0
    :goto_0
    monitor-exit v16

    return-object v14

    .line 133
    :cond_1
    const/4 v14, 0x0

    .line 134
    .local v14, "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    const/4 v12, 0x0

    .line 136
    .local v12, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/ubtechinc/db/provider/Provider$ActionNameColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "action_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "action_type"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "action_cn_name"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "action_en_name"

    aput-object v6, v4, v5

    const-string v5, "action_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 144
    if-eqz v12, :cond_3

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    new-instance v15, Lcom/ubtechinc/db/pojos/Alpha2ActionName;

    invoke-direct {v15}, Lcom/ubtechinc/db/pojos/Alpha2ActionName;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    .end local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .local v15, "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    :try_start_1
    const-string v2, "action_id"

    .line 147
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 146
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 148
    .local v10, "action_id":Ljava/lang/String;
    const-string v2, "action_type"

    .line 149
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 148
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, "action_type":Ljava/lang/String;
    const-string v2, "action_cn_name"

    .line 151
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 150
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, "action_cn_name":Ljava/lang/String;
    const-string v2, "action_en_name"

    .line 153
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 152
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 154
    .local v9, "action_en_name":Ljava/lang/String;
    iput-object v10, v15, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_id:Ljava/lang/String;

    .line 155
    iput-object v11, v15, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_type:Ljava/lang/String;

    .line 156
    iput-object v8, v15, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_cn_name:Ljava/lang/String;

    .line 157
    iput-object v9, v15, Lcom/ubtechinc/db/pojos/Alpha2ActionName;->action_en_name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 164
    if-eqz v12, :cond_2

    .line 165
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_2
    move-object v14, v15

    .line 167
    goto/16 :goto_0

    .line 164
    .end local v8    # "action_cn_name":Ljava/lang/String;
    .end local v9    # "action_en_name":Ljava/lang/String;
    .end local v10    # "action_id":Ljava/lang/String;
    .end local v11    # "action_type":Ljava/lang/String;
    .end local v15    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .restart local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    :cond_3
    if-eqz v12, :cond_0

    .line 165
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 129
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v16

    throw v2

    .line 161
    :catch_0
    move-exception v13

    .line 162
    .local v13, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 164
    if-eqz v12, :cond_0

    .line 165
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 164
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    :goto_3
    if-eqz v12, :cond_0

    .line 165
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 164
    .end local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .restart local v15    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    :catchall_2
    move-exception v2

    move-object v14, v15

    .end local v15    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .restart local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    goto :goto_3

    .line 161
    .end local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .restart local v15    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    :catch_1
    move-exception v13

    move-object v14, v15

    .end local v15    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .restart local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    goto :goto_2

    .line 129
    .end local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .restart local v8    # "action_cn_name":Ljava/lang/String;
    .restart local v9    # "action_en_name":Ljava/lang/String;
    .restart local v10    # "action_id":Ljava/lang/String;
    .restart local v11    # "action_type":Ljava/lang/String;
    .restart local v15    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    :catchall_3
    move-exception v2

    move-object v14, v15

    .end local v15    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    .restart local v14    # "p":Lcom/ubtechinc/db/pojos/Alpha2ActionName;
    goto :goto_1
.end method

.method public static declared-synchronized update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "oldActionID"    # Ljava/lang/String;
    .param p2, "actionID"    # Ljava/lang/String;
    .param p3, "actionType"    # I
    .param p4, "actionCNName"    # Ljava/lang/String;
    .param p5, "actionENName"    # Ljava/lang/String;

    .prologue
    .line 102
    const-class v3, Lcom/ubtechinc/db/ActionNameDao;

    monitor-enter v3

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "action_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "action_type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    .line 106
    const-string v2, "action_cn_name"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "action_en_name"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/ubtechinc/db/provider/Provider$ActionNameColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "action_id =? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :cond_1
    :goto_1
    monitor-exit v3

    return-void

    .line 108
    :cond_2
    if-nez p4, :cond_3

    if-eqz p5, :cond_1

    .line 110
    :cond_3
    if-nez p4, :cond_4

    .line 111
    :try_start_2
    const-string v2, "action_en_name"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 102
    .end local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 112
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_4
    if-nez p5, :cond_0

    .line 113
    :try_start_3
    const-string v2, "action_cn_name"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
