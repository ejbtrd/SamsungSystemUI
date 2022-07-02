.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;
.super Ljava/lang/Object;
.source "Manager.java"


# static fields
.field private static instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;


# instance fields
.field private dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

.field private queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

.field private useDatabase:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 30
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    .line 32
    :cond_0
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-direct {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    .line 33
    iput-boolean p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    return-void
.end method

.method private constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;-><init>(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    .line 38
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-direct {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;-><init>()V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;
    .locals 5

    .line 43
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    if-nez v0, :cond_3

    .line 44
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    monitor-enter v0

    .line 45
    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 46
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "lgt"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "rtb"

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDbOpenHelper()Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    new-instance p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;)V

    sput-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Landroid/content/Context;Z)V

    sput-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    goto :goto_0

    .line 58
    :cond_1
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-direct {p1, p0, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Landroid/content/Context;Z)V

    sput-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    goto :goto_0

    .line 62
    :cond_2
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-direct {p1, p0, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Landroid/content/Context;Z)V

    sput-object p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    .line 64
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 66
    :cond_3
    :goto_1
    sget-object p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    return-object p0
.end method

.method private mergeQueueToDb()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->getAll()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->getAll()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 83
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->insert(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->getAll()Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->getDaysAgo(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->delete(J)V

    :cond_0
    return-void
.end method

.method public enableDatabaseBuffering(Landroid/content/Context;)V
    .locals 1

    .line 70
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->enableDatabaseBuffering(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;)V

    return-void
.end method

.method public enableDatabaseBuffering(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;)V
    .locals 1

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    .line 75
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    .line 77
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->mergeQueueToDb()V

    return-void
.end method

.method public get()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->get(I)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;"
        }
    .end annotation

    .line 123
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->delete()V

    if-gtz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->selectAll()Ljava/util/Queue;

    move-result-object p1

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->selectSome(I)Ljava/util/Queue;

    move-result-object p1

    goto :goto_0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->getAll()Ljava/util/Queue;

    move-result-object p1

    .line 134
    :goto_0
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get log from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    if-eqz p0, :cond_2

    const-string p0, "Database "

    goto :goto_1

    :cond_2
    const-string p0, "Queue "

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method

.method public insert(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V
    .locals 1

    .line 106
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;-><init>(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    .line 107
    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->insert(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    return-void
.end method

.method public insert(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->insert(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->insert(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    :goto_0
    return-void
.end method

.method public isEnabledDatabaseBuffering()Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    return p0
.end method

.method public remove(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    if-eqz v0, :cond_1

    .line 160
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->delete(Ljava/util/List;)V

    :cond_1
    return-void
.end method
