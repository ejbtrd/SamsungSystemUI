.class public Lcom/android/systemui/pluginlock/utils/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pluginlock/utils/DumpUtils$HandlerExecutor;
    }
.end annotation


# static fields
.field private static final DUMP_DIR:Ljava/lang/String; = "/data/user_de/0/com.android.systemui/files/pluginlock/"

.field private static final DUMP_FILE:Ljava/lang/String; = "dump.txt"

.field private static final DUMP_PATH:Ljava/lang/String; = "/data/user_de/0/com.android.systemui/files/pluginlock/dump.txt"

.field private static final PLUGIN_LOCK_EVENT_DUMP:Ljava/lang/String; = "plugin_lock_event_dump"

.field private static final TAG:Ljava/lang/String; = "DumpUtils"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDumpString:Ljava/lang/String;

.field private final mHandlerExecutor:Lcom/android/systemui/pluginlock/utils/DumpUtils$HandlerExecutor;

.field private final mWriteRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/android/systemui/pluginlock/utils/DumpUtils$HandlerExecutor;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/utils/DumpUtils$HandlerExecutor;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mHandlerExecutor:Lcom/android/systemui/pluginlock/utils/DumpUtils$HandlerExecutor;

    .line 30
    new-instance v0, Lcom/android/systemui/pluginlock/utils/DumpUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/utils/DumpUtils$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/utils/DumpUtils;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mWriteRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mDumpString:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method private buildDumpString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 82
    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 84
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " | "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDumpFromFile()Ljava/lang/String;
    .locals 3

    .line 95
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/user_de/0/com.android.systemui/files/pluginlock/dump.txt"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 98
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 105
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 109
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 39
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    .line 47
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/utils/DumpUtils;->getDump()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x64

    new-array v2, v1, [Ljava/lang/String;

    .line 56
    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move v4, p1

    .line 57
    :goto_0
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v5

    if-eqz v5, :cond_2

    if-ge v4, v1, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 58
    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    move v4, v5

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "line.separator"

    if-lt v4, v1, :cond_3

    const/4 p1, 0x1

    :goto_1
    if-ge p1, v1, :cond_4

    .line 64
    :try_start_1
    aget-object v4, v2, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge p1, v4, :cond_4

    .line 68
    aget-object v1, v2, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 71
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/systemui/pluginlock/utils/DumpUtils;->buildDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mDumpString:Ljava/lang/String;

    .line 74
    iget-object p1, p0, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mHandlerExecutor:Lcom/android/systemui/pluginlock/utils/DumpUtils$HandlerExecutor;

    iget-object p2, p0, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/android/systemui/pluginlock/utils/DumpUtils$HandlerExecutor;->remove(Ljava/lang/Runnable;)V

    .line 75
    iget-object p1, p0, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mHandlerExecutor:Lcom/android/systemui/pluginlock/utils/DumpUtils$HandlerExecutor;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mWriteRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/systemui/pluginlock/utils/DumpUtils$HandlerExecutor;->execute(Ljava/lang/Runnable;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public getDump()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mDumpString:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mDumpString:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/utils/DumpUtils;->getDumpFromFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mDumpString:Ljava/lang/String;

    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method public getDumpLegacy()Ljava/lang/String;
    .locals 3

    .line 135
    iget-object p0, p0, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "plugin_lock_event_dump"

    .line 136
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 138
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-object v1
.end method

.method public writeDump()V
    .locals 4

    const-string v0, "DumpUtils"

    const-string/jumbo v1, "writeDump"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/user_de/0/com.android.systemui/files/pluginlock/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeDump, created: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/user_de/0/com.android.systemui/files/pluginlock/dump.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 126
    iget-object p0, p0, Lcom/android/systemui/pluginlock/utils/DumpUtils;->mDumpString:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 127
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 128
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
