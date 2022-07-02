.class public Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
.super Ljava/lang/Object;
.source "WallpaperEventNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "WallpaperEventNotifier"


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/widget/SystemUIWidgetCallback;",
            ">;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCoverCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/widget/SystemUIWidgetCallback;",
            ">;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurStatusFlag:J

.field private mCurStatusFlagCover:J

.field private final mHandler:Landroid/os/Handler;

.field private mIsLockStarEnabled:Z

.field private mIsThemeApplying:Z

.field private mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

.field private mLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public static synthetic $r8$lambda$8ObYAvfY_BIWPKOxoLtwhNUME1A(Lcom/android/systemui/widget/SystemUIWidgetCallback;JLandroid/app/SemWallpaperColors;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->lambda$notifyUpdate$0(Lcom/android/systemui/widget/SystemUIWidgetCallback;JLandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z5hH6j4ocW5X1g4uL5DPPgHqeoA(Ljava/io/PrintWriter;Ljava/text/DateFormat;Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->lambda$dump$1(Ljava/io/PrintWriter;Ljava/text/DateFormat;Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Landroid/os/Handler;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    .line 52
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlagCover:J

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsLockStarEnabled:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    .line 66
    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    .line 67
    iput-object p3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    const-string/jumbo p3, "wallpaper"

    .line 68
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 69
    new-instance p1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    iget-object p3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3, p2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;-><init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    return-void
.end method

.method private addLog(Ljava/lang/String;)V
    .locals 1

    .line 371
    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;

    invoke-direct {v0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;-><init>(Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    .line 375
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private debugNotify(ZJLandroid/app/SemWallpaperColors;Ljava/lang/String;)V
    .locals 1

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    invoke-static {p2, p3}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    move-result-object p2

    .line 224
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ", isCover = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", colors = "

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    .line 227
    invoke-virtual {p4}, Landroid/app/SemWallpaperColors;->toSimpleString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "null"

    .line 229
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :goto_0
    sget-object p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
    .locals 1

    .line 108
    const-class v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    return-object v0
.end method

.method private static synthetic lambda$dump$1(Ljava/io/PrintWriter;Ljava/text/DateFormat;Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;)V
    .locals 3

    .line 362
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;->time:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$DebugLog;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$notifyUpdate$0(Lcom/android/systemui/widget/SystemUIWidgetCallback;JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 179
    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/widget/SystemUIWidgetCallback;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method private notifyUpdate(ZJLandroid/app/SemWallpaperColors;)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_5

    const-string/jumbo v8, "notifyUpdate"

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    move-object v7, p4

    .line 166
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->debugNotify(ZJLandroid/app/SemWallpaperColors;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 168
    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    :goto_0
    monitor-enter v2

    if-eqz p1, :cond_1

    .line 169
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    :goto_1
    const/4 v3, 0x0

    .line 170
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 171
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 172
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/widget/SystemUIWidgetCallback;

    .line 173
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    if-eqz v5, :cond_3

    and-long v8, v6, p2

    cmp-long v4, v8, v0

    if-nez v4, :cond_2

    .line 176
    invoke-direct {p0, v6, v7, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->shouldNotifyShadowChanges(JJ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 177
    invoke-direct {p0, v6, v7, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sholudNotifyAdaptiveContrastChanges(JJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 179
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5, p2, p3, p4}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/widget/SystemUIWidgetCallback;JLandroid/app/SemWallpaperColors;)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 183
    :cond_4
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method private removeFlags(JJ)J
    .locals 0

    not-long p3, p3

    and-long p0, p1, p3

    return-wide p0
.end method

.method private sendUpdates(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V
    .locals 7

    .line 288
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    if-eqz v0, :cond_0

    .line 289
    sget-object p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "sendUpdates: Ignore update while theme is applying..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object v0

    if-nez v0, :cond_1

    .line 298
    sget-object p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "sendUpdates: We don\'t have any colors to notify for now."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "sendUpdates: We don\'t have any colors to notify for now"

    .line 299
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v1, 0x0

    if-eqz p1, :cond_2

    const-wide/16 v3, 0x403

    .line 304
    invoke-direct {p0, p3, p4, v3, v4}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeFlags(JJ)J

    move-result-wide p3

    goto :goto_0

    .line 308
    :cond_2
    iget-wide v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-nez v3, :cond_3

    .line 309
    invoke-direct {p0, p3, p4, v5, v6}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeFlags(JJ)J

    move-result-wide p3

    .line 311
    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    const-wide/16 v5, 0x2

    and-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-nez v3, :cond_4

    .line 312
    invoke-direct {p0, p3, p4, v5, v6}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeFlags(JJ)J

    move-result-wide p3

    .line 314
    :cond_4
    iget-wide v3, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    const-wide/16 v5, 0x400

    and-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-nez v3, :cond_5

    .line 315
    invoke-direct {p0, p3, p4, v5, v6}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeFlags(JJ)J

    move-result-wide p3

    :cond_5
    :goto_0
    cmp-long v1, p3, v1

    if-eqz v1, :cond_7

    .line 321
    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string/jumbo v6, "sendUpdates"

    move-object v1, p0

    move v2, p1

    move-wide v3, p3

    move-object v5, v0

    .line 322
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->debugNotify(ZJLandroid/app/SemWallpaperColors;Ljava/lang/String;)V

    .line 324
    :cond_6
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendUpdates: typesTobeNotified = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-interface {p2, p3, p4, v0}, Lcom/android/systemui/widget/SystemUIWidgetCallback;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    goto :goto_1

    .line 327
    :cond_7
    sget-object p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "sendUpdates: Nothing to notify"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private setCurStatusFlag(Landroid/app/SemWallpaperColors;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setCurStatusFlag(ZLandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method private setCurStatusFlag(ZLandroid/app/SemWallpaperColors;)V
    .locals 2

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 88
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlagCover:J

    goto :goto_0

    .line 90
    :cond_0
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    :goto_0
    if-nez p2, :cond_1

    const-string/jumbo p1, "setCurStatusFlag: colors is null. May cause unexptected behaviour!"

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {v0, p2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->checkBaseUpdates(Landroid/app/SemWallpaperColors;)J

    move-result-wide v0

    if-eqz p1, :cond_2

    .line 100
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlagCover:J

    goto :goto_1

    .line 102
    :cond_2
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    :goto_1
    return-void
.end method

.method private sholudNotifyAdaptiveContrastChanges(JJ)Z
    .locals 6

    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move p0, v0

    .line 211
    :goto_0
    sget v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPARATED_AREA:I

    if-ge p0, v1, :cond_2

    .line 212
    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    aget-wide v4, v1, p0

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_ADAPTIVE_CONTRAST:[J

    aget-wide v4, v1, p0

    and-long/2addr v4, p3

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private shouldNotifyShadowChanges(JJ)Z
    .locals 6

    const-wide/16 v0, 0x8

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move p0, v0

    .line 196
    :goto_0
    sget v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->NUM_SEPARATED_AREA:I

    if-ge p0, v1, :cond_2

    .line 197
    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS:[J

    aget-wide v4, v1, p0

    and-long/2addr v4, p1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->UPDATE_FLAGS_SHADOW:[J

    aget-wide v4, v1, p0

    and-long/2addr v4, p3

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    monitor-enter p0

    .line 360
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mLogs:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda1;

    invoke-direct {v2, p2, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;Ljava/text/DateFormat;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 365
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 365
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getCurStatusFlag()J
    .locals 2

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getCurStatusFlag(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurStatusFlag(Z)J
    .locals 0

    if-eqz p1, :cond_0

    .line 129
    iget-wide p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlagCover:J

    return-wide p0

    .line 131
    :cond_0
    iget-wide p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCurStatusFlag:J

    return-wide p0
.end method

.method public getIsThemeApplying()Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    return p0
.end method

.method public getSemWallpaperColors()Landroid/app/SemWallpaperColors;
    .locals 1

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors(Z)Landroid/app/SemWallpaperColors;

    move-result-object p0

    return-object p0
.end method

.method public initFlags()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setCurStatusFlag(Landroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    .line 237
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V
    .locals 1

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    return-void
.end method

.method public registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V
    .locals 4

    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    :goto_0
    monitor-enter v0

    if-eqz p1, :cond_1

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    :goto_1
    const/4 v2, 0x0

    .line 253
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 254
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 255
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p2, :cond_2

    .line 256
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "registerCallback: Object tried to add another callback "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    monitor-exit v0

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 261
    :cond_3
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 268
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->sendUpdates(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    return-void

    :catchall_0
    move-exception p0

    .line 262
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    return-void
.end method

.method public removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    :goto_0
    monitor-enter v0

    if-eqz p1, :cond_1

    .line 277
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCoverCallbacks:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mCallbacks:Ljava/util/ArrayList;

    .line 278
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_3

    .line 279
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 280
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_2

    .line 281
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 284
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setIsThemeApplying(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    return-void
.end method

.method public setSemWallpaperColors(Landroid/app/SemWallpaperColors;I)J
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->setSemWallpaperColors(Landroid/app/SemWallpaperColors;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public update(J)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mKeyguardWallpaperColors:Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getSemWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ZJLandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public update(JLandroid/app/SemWallpaperColors;)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ZJLandroid/app/SemWallpaperColors;)V

    return-void
.end method

.method public update(ZJLandroid/app/SemWallpaperColors;)V
    .locals 2

    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mIsThemeApplying:Z

    if-eqz v0, :cond_0

    const-string/jumbo p1, "update: Ignore update while theme is applying..."

    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->addLog(Ljava/lang/String;)V

    .line 150
    sget-object p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-wide/16 v0, 0x403

    .line 155
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeFlags(JJ)J

    move-result-wide p2

    .line 160
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->setCurStatusFlag(ZLandroid/app/SemWallpaperColors;)V

    .line 161
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->notifyUpdate(ZJLandroid/app/SemWallpaperColors;)V

    return-void
.end method
