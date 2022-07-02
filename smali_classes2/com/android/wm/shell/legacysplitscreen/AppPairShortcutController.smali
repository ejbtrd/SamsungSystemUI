.class public Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;
.super Ljava/lang/Object;
.source "AppPairShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController$H;
    }
.end annotation


# static fields
.field private static final sPairComponentNameList:[Ljava/lang/String;

.field private static final sPairUserIdList:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mH:Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController$H;

.field private final mSplitAreaBounds:Landroid/graphics/Rect;

.field private mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "component_first"

    const-string v1, "component_second"

    const-string v2, "component_third"

    .line 68
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->sPairComponentNameList:[Ljava/lang/String;

    const-string/jumbo v0, "userId_first"

    const-string/jumbo v1, "userId_second"

    const-string/jumbo v2, "userId_third"

    .line 71
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->sPairUserIdList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mSplitAreaBounds:Landroid/graphics/Rect;

    .line 82
    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController$H;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController$H;-><init>(Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mH:Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController$H;

    .line 84
    iput-object p2, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getLaunchActivityForTask(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 2

    .line 178
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLaunchActivityForTask, can\'t get ComponentName from Task="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppPairShortcutController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getLaunchIntentForPackageAsUser(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 186
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private isSupportAppPairForMultiInstance(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)Z"
        }
    .end annotation

    .line 236
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 238
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 239
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    const-string p0, "AppPairShortcutController"

    const-string p1, "componentName is null"

    .line 241
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 244
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 245
    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    if-nez v2, :cond_1

    .line 248
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 249
    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    invoke-static {p1, v1}, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->supportAppPairShortCut(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 254
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private isSupportAppPairType(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)Z"
        }
    .end annotation

    .line 260
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 261
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    const/4 v1, 0x0

    const-string v2, "AppPairShortcutController"

    if-nez v0, :cond_1

    const-string p0, "componentName is null"

    .line 263
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 266
    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 267
    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 268
    invoke-static {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getLaunchIntentForPackageAsUser(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 269
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_0

    .line 270
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLaunchIntentForPackageAsUser is null or empty component ("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static supportAppPairShortCut(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "AppPairShortcutController"

    .line 280
    invoke-static {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSingleInstancePerTask(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v1, 0x0

    .line 285
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 292
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "com.samsung.android.multiwindow.support.pair.shortcut"

    .line 296
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 293
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Divider AppPair] appInfo or appInfo.metaData is null="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 288
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Divider AppPair] No such package="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method createAppPairShortcut()V
    .locals 6

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    .line 90
    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTaskOrganizer()Landroid/window/TaskOrganizer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v2, v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    .line 92
    invoke-virtual {v2}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTaskOrganizer()Landroid/window/TaskOrganizer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v4, v4, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v4, v3}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v2

    .line 93
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v4, v3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_4

    iget-object v3, v3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 98
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    sget-object v2, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->sPairUserIdList:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [I

    .line 114
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 115
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 116
    invoke-direct {p0, v4}, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->getLaunchActivityForTask(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 118
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    aput v4, v2, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 124
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v3, :cond_3

    return-void

    :cond_3
    const-string v0, "com.samsung.android.multiwindow.ADD_PAIR_APP_SHORTCUT_EDGEPANEL"

    .line 128
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->createAppPairShortcutIntent(Ljava/lang/String;Ljava/util/ArrayList;[I)Landroid/content/Intent;

    move-result-object v0

    .line 130
    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mH:Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController$H;

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4
    :goto_1
    const-string p0, "AppPairShortcutController"

    const-string v0, "createAppPairShortcut: Can\'t find topActivity Or there is no child tasks."

    .line 95
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method createAppPairShortcutIntent(Ljava/lang/String;Ljava/util/ArrayList;[I)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 135
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x11000000

    .line 136
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 140
    sget-object v2, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->sPairComponentNameList:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    sget-object v2, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->sPairUserIdList:[Ljava/lang/String;

    aget-object v2, v2, v1

    aget v3, p3, v1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSplitScreenController:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;->getSplitLayout()Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    move-result-object p1

    .line 157
    iget v1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDividerSize:I

    .line 158
    iget-object v1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v2, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mSplitAreaBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getSplitAreaBounds(Landroid/graphics/Rect;)V

    .line 160
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p1, p1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->mPrimary:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mSplitAreaBounds:Landroid/graphics/Rect;

    invoke-static {v1, p1, p0}, Lcom/android/internal/policy/DockedDividerUtils;->calculateSplitRatio(Landroid/content/res/Resources;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p0

    const-string p1, "divider_ratio"

    .line 162
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createAppPairShortcutLocked() Split activities = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", userIds = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppPairShortcutController"

    .line 172
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method isSupportAppPairPolicy(Landroid/content/Context;)Z
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTaskOrganizer()Landroid/window/TaskOrganizer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v1, v1, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mPrimary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    invoke-virtual {v1}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->getTaskOrganizer()Landroid/window/TaskOrganizer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->mSplits:Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;

    iget-object v3, v3, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenTaskListener;->mSecondary:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v3, v2}, Landroid/window/TaskOrganizer;->getChildTasks(Landroid/window/WindowContainerToken;[I)Ljava/util/List;

    move-result-object v1

    const-string v2, "AppPairShortcutController"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 206
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v1, :cond_3

    .line 207
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-direct {p0, p1, v4}, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->isSupportAppPairForMultiInstance(Landroid/content/Context;Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 222
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[isSupportAppPairPolicy] isSupportAppPairForMultiInstance returns false. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 226
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/wm/shell/legacysplitscreen/AppPairShortcutController;->isSupportAppPairType(Ljava/util/ArrayList;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 227
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[isSupportAppPairPolicy] isSupportAppPairType returns false. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const-string p0, "[isSupportAppPairPolicy] getChildTasks() is null or empty"

    .line 208
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method
