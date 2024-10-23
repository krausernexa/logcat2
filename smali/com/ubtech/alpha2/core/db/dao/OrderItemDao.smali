.class public Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "OrderItemDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubtech/alpha2/core/db/dao/OrderItemDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/ubtech/alpha2/core/model/response/OrderItem;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "ORDER_ITEM"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 1
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 38
    const-class v0, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->TAG:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/ubtech/alpha2/core/db/DaoSession;)V
    .locals 1
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/ubtech/alpha2/core/db/DaoSession;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 38
    const-class v0, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->TAG:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "ifNotExists"    # Z

    .prologue
    .line 68
    if-eqz p1, :cond_0

    const-string v0, "IF NOT EXISTS "

    .line 69
    .local v0, "constraint":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'ORDER_ITEM\' (\'_id\' INTEGER PRIMARY KEY ,\'NAME\' TEXT NOT NULL ,\'MESSAGETYPE\' TEXT NOT NULL ,\'VOICECODE\' TEXT NOT NULL ,\'FOCUS\' TEXT NOT NULL );"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    return-void

    .line 68
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
    .line 79
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

    const-string v2, "\'ORDER_ITEM\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    return-void

    .line 79
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/ubtech/alpha2/core/model/response/OrderItem;)V
    .locals 4
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/ubtech/alpha2/core/model/response/OrderItem;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 89
    invoke-virtual {p2}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 90
    .local v0, "id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 93
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p2}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    const/4 v1, 0x3

    invoke-virtual {p2}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->getMessagetype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 95
    const/4 v1, 0x4

    invoke-virtual {p2}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->getVoicecode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 96
    const/4 v1, 0x5

    invoke-virtual {p2}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->getFocus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 97
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p2, Lcom/ubtech/alpha2/core/model/response/OrderItem;

    invoke-virtual {p0, p1, p2}, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/ubtech/alpha2/core/model/response/OrderItem;)V

    return-void
.end method

.method public getKey(Lcom/ubtech/alpha2/core/model/response/OrderItem;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/ubtech/alpha2/core/model/response/OrderItem;

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->getId()Ljava/lang/Long;

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
    .line 37
    check-cast p1, Lcom/ubtech/alpha2/core/model/response/OrderItem;

    invoke-virtual {p0, p1}, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->getKey(Lcom/ubtech/alpha2/core/model/response/OrderItem;)Ljava/lang/Long;

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

.method public queryByName(Ljava/lang/String;)Lcom/ubtech/alpha2/core/model/response/OrderItem;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 167
    invoke-virtual {p0}, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    .line 168
    .local v2, "qb":Lde/greenrobot/dao/query/QueryBuilder;
    sget-object v3, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao$Properties;->Name:Lde/greenrobot/dao/Property;

    invoke-virtual {v3, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v3

    new-array v4, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    .line 170
    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "focusList":Ljava/util/List;, "Ljava/util/List<Lcom/ubtech/alpha2/core/model/response/OrderItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ubtech/alpha2/core/model/response/OrderItem;

    .line 173
    .local v1, "note":Lcom/ubtech/alpha2/core/model/response/OrderItem;
    iget-object v4, p0, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->TAG:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/ubtech/alpha2/core/utils/NLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    .end local v1    # "note":Lcom/ubtech/alpha2/core/model/response/OrderItem;
    :cond_0
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ubtech/alpha2/core/model/response/OrderItem;

    .line 177
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/ubtech/alpha2/core/model/response/OrderItem;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 108
    new-instance v0, Lcom/ubtech/alpha2/core/model/response/OrderItem;

    add-int/lit8 v1, p2, 0x0

    .line 109
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 110
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, 0x2

    .line 111
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, 0x3

    .line 112
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p2, 0x4

    .line 113
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/ubtech/alpha2/core/model/response/OrderItem;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v0, "entity":Lcom/ubtech/alpha2/core/model/response/OrderItem;
    return-object v0

    .line 109
    .end local v0    # "entity":Lcom/ubtech/alpha2/core/model/response/OrderItem;
    :cond_0
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->readEntity(Landroid/database/Cursor;I)Lcom/ubtech/alpha2/core/model/response/OrderItem;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/ubtech/alpha2/core/model/response/OrderItem;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/ubtech/alpha2/core/model/response/OrderItem;
    .param p3, "offset"    # I

    .prologue
    .line 121
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->setId(Ljava/lang/Long;)V

    .line 123
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->setName(Ljava/lang/String;)V

    .line 124
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->setMessagetype(Ljava/lang/String;)V

    .line 125
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->setVoicecode(Ljava/lang/String;)V

    .line 126
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->setFocus(Ljava/lang/String;)V

    .line 127
    return-void

    .line 121
    :cond_0
    add-int/lit8 v0, p3, 0x0

    .line 122
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 121
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 37
    check-cast p2, Lcom/ubtech/alpha2/core/model/response/OrderItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->readEntity(Landroid/database/Cursor;Lcom/ubtech/alpha2/core/model/response/OrderItem;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 102
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
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public saveOrderItemList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ubtech/alpha2/core/model/response/OrderItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/ubtech/alpha2/core/model/response/OrderItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubtech/alpha2/core/model/response/OrderItem;

    .line 159
    .local v0, "item":Lcom/ubtech/alpha2/core/model/response/OrderItem;
    invoke-virtual {p0, v0}, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->insert(Ljava/lang/Object;)J

    goto :goto_0

    .line 161
    .end local v0    # "item":Lcom/ubtech/alpha2/core/model/response/OrderItem;
    :cond_0
    return-void
.end method

.method protected updateKeyAfterInsert(Lcom/ubtech/alpha2/core/model/response/OrderItem;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/ubtech/alpha2/core/model/response/OrderItem;
    .param p2, "rowId"    # J

    .prologue
    .line 132
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ubtech/alpha2/core/model/response/OrderItem;->setId(Ljava/lang/Long;)V

    .line 133
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 37
    check-cast p1, Lcom/ubtech/alpha2/core/model/response/OrderItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ubtech/alpha2/core/db/dao/OrderItemDao;->updateKeyAfterInsert(Lcom/ubtech/alpha2/core/model/response/OrderItem;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
