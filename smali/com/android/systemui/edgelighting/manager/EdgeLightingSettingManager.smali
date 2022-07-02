.class public Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;
.super Ljava/lang/Object;
.source "EdgeLightingSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeLightingSettingManager"

.field private static sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;


# instance fields
.field private final IS_ALL_APPS_AVAILABLE:Ljava/lang/String;

.field private mAllApplication:Z

.field private final mAppNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/edgelighting/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnableSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mPreviousEnableSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    const-string v0, "AllAppsAvailable"

    .line 80
    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->IS_ALL_APPS_AVAILABLE:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mPreviousEnableSet:Ljava/util/HashMap;

    .line 227
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mLock:Ljava/lang/Object;

    .line 656
    new-instance v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;-><init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAppNameComparator:Ljava/util/Comparator;

    .line 95
    iput-object p1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->fillInEdgeLightingSetting(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;)Ljava/util/List;
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getAppList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;)Ljava/util/HashMap;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    return-object p0
.end method

.method private getAppList()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 547
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 549
    iget-object v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 550
    iget-object v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getPolicyType()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    .line 555
    invoke-virtual {v0, v5}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getPolicyInfoByCategory(I)Ljava/util/HashMap;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v6

    .line 558
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getPriorityMap()Ljava/util/HashMap;

    move-result-object v7

    .line 559
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 560
    invoke-static {v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getAppInfoSupportingEdgeLighting(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 563
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 565
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 566
    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 567
    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 569
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 574
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v13, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 578
    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 582
    :cond_2
    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 584
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v12, v6

    :goto_2
    if-eqz v12, :cond_5

    if-eqz v13, :cond_5

    if-eqz v7, :cond_3

    .line 590
    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    goto :goto_3

    :cond_3
    move-object v0, v6

    :goto_3
    if-eqz v0, :cond_4

    .line 595
    iget v0, v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->priority:I

    move v15, v0

    goto :goto_4

    :cond_4
    move v15, v4

    .line 598
    :goto_4
    new-instance v0, Lcom/android/systemui/edgelighting/data/AppInfo;

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/edgelighting/data/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 601
    :cond_5
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->TAG:Ljava/lang/String;

    const-string v10, "Error..."

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 605
    :cond_6
    iget-object v0, v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAppNameComparator:Ljava/util/Comparator;

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 607
    :goto_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_8

    .line 608
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/AppInfo;

    if-nez v0, :cond_7

    .line 611
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateAppList item is null.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 615
    :cond_7
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    return-object v2
.end method

.method private getAppNameFromPkgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 675
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 678
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;
    .locals 2

    const-class v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->sInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private parseDefaultEdgeLighting(Landroid/content/Context;)V
    .locals 6

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 153
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$raw;->edge_lighting_settings:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 154
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 155
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 156
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 163
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_2

    .line 166
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_b

    :catch_1
    move-exception v2

    .line 175
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 169
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 173
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_b

    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    :goto_4
    throw p0

    :catch_3
    move-exception v4

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v3, v1

    goto/16 :goto_f

    :catch_4
    move-exception v4

    move-object v3, v1

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v3, v1

    goto/16 :goto_10

    :catch_5
    move-exception v4

    move-object v2, v1

    move-object v3, v2

    .line 159
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v2, :cond_2

    .line 163
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catchall_3
    move-exception p0

    goto :goto_8

    :catch_6
    move-exception v2

    goto :goto_7

    :cond_2
    :goto_6
    if-eqz v3, :cond_4

    .line 166
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_a

    .line 169
    :goto_7
    :try_start_a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v3, :cond_5

    .line 173
    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_b

    :goto_8
    if-eqz v3, :cond_3

    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_9

    :catch_7
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    :cond_3
    :goto_9
    throw p0

    :cond_4
    :goto_a
    if-eqz v3, :cond_5

    .line 173
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    .line 181
    :cond_5
    :goto_b
    :try_start_e
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "edge_lighting_default_type"

    .line 182
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_6

    goto :goto_c

    :cond_6
    move v2, v3

    :goto_c
    iput-boolean v2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    if-nez v2, :cond_9

    .line 184
    invoke-static {p1, v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getPriorityMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 189
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 190
    iget-boolean v2, v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->defaultOn:Z

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingSupportedPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 191
    iget-object v2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    new-instance v4, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;

    const v5, -0xb37941

    invoke-direct {v4, v3, v5}, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-direct {p0, v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getAppNameFromPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 195
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->writeAppNameList(Ljava/util/List;)V

    goto :goto_e

    .line 198
    :cond_9
    new-instance p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$GetAppNameListAsyncTask;-><init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager$1;)V

    new-array p0, v3, [Ljava/lang/Void;

    .line 199
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_e

    :catch_8
    move-exception p0

    .line 202
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a
    :goto_e
    return-void

    :catchall_4
    move-exception p0

    :goto_f
    move-object v1, v2

    :goto_10
    if-eqz v1, :cond_b

    .line 163
    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_11

    :catchall_5
    move-exception p0

    goto :goto_13

    :catch_9
    move-exception p1

    goto :goto_12

    :cond_b
    :goto_11
    if-eqz v3, :cond_d

    .line 166
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_15

    .line 169
    :goto_12
    :try_start_10
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v3, :cond_e

    .line 173
    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_16

    :goto_13
    if-eqz v3, :cond_c

    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_14

    :catch_a
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 178
    :cond_c
    :goto_14
    throw p0

    :cond_d
    :goto_15
    if-eqz v3, :cond_e

    .line 173
    :try_start_13
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_16

    :catch_b
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 179
    :cond_e
    :goto_16
    throw p0
.end method

.method private putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 417
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 418
    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 419
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 411
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 412
    invoke-interface {p0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 413
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setDisablePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "edge_lighting_settings"

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 495
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string/jumbo v1, "version"

    const/4 v2, 0x1

    .line 496
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 497
    iget-object v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "enable_list"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 498
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 499
    invoke-static {p1, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;ZLjava/util/HashMap;)V

    return-void
.end method

.method private writeAppNameList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 642
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    const-string v0, ""

    if-eqz p0, :cond_0

    .line 643
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "AllAppsAvailable"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_3

    .line 644
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    .line 645
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object p1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 646
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 649
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 653
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "write default enable app list... "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addSilentInstalledPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getAppInfoSupportingEdgeLighting(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 295
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 300
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSilentInstalledPackage : on, packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->setEnablePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    invoke-static {p1, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;ZLjava/util/HashMap;)V

    goto :goto_0

    .line 304
    :cond_1
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSilentInstalledPackage : off, packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "edge_lighting_settings"

    .line 305
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 306
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "silent_add_list"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 307
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 309
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    .line 311
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "silent_remove_list"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 312
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 313
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    :goto_0
    return-void

    .line 296
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addSilentInstalledPackage : no support package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump()Ljava/lang/StringBuilder;
    .locals 2

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable pkg ( "

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget-boolean v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    if-eqz v1, :cond_0

    const-string v1, "ALL"

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " )  : "

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 539
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public fillInEdgeLightingSetting(Landroid/content/Context;)V
    .locals 9

    .line 101
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "edge_lighting_settings"

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "version"

    .line 103
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "all_application"

    const/4 v4, 0x1

    .line 104
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    if-nez v2, :cond_0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->parseDefaultEdgeLighting(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "enable_list"

    .line 109
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 114
    iget-object v6, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    new-instance v7, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;

    const v8, -0xb37941

    invoke-direct {v7, v5, v8}, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-direct {p0, v5}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getAppNameFromPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->writeAppNameList(Ljava/util/List;)V

    .line 122
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->initializeSettingValue(Landroid/content/ContentResolver;Z)V

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/systemui/edgelighting/EdgeLightingService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "forUpdatePolicy"

    .line 125
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 130
    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    const-string v2, "36103"

    invoke-static {p1, v2, p0}, Lcom/android/systemui/edgelighting/utils/Utils;->logInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingShowCondition(Landroid/content/ContentResolver;)I

    move-result p0

    const-string v2, "36104"

    .line 131
    invoke-static {p1, v2, p0}, Lcom/android/systemui/edgelighting/utils/Utils;->logInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 135
    invoke-static {}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingStyleManager;->getEdgeLightingStyleType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/Utils;->getEffectEnglishName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "36105"

    .line 134
    invoke-static {p1, v2, p0}, Lcom/android/systemui/edgelighting/utils/Utils;->logString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/Utils;->getColorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "36106"

    .line 136
    invoke-static {p1, v2, p0}, Lcom/android/systemui/edgelighting/utils/Utils;->logString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingTransparency(Landroid/content/ContentResolver;)I

    move-result p0

    const-string v2, "36107"

    .line 138
    invoke-static {p1, v2, p0}, Lcom/android/systemui/edgelighting/utils/Utils;->logInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingThickness(Landroid/content/ContentResolver;)I

    move-result p0

    const-string v2, "36108"

    .line 140
    invoke-static {p1, v2, p0}, Lcom/android/systemui/edgelighting/utils/Utils;->logInt(Landroid/content/Context;Ljava/lang/String;I)V

    const-string p0, "36109"

    .line 143
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, p0, v0}, Lcom/android/systemui/edgelighting/utils/Utils;->logInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public getEnabledEdgeLightingItems()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    return-object p0
.end method

.method public isAllApplicationEnabled()Z
    .locals 0

    .line 211
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    return p0
.end method

.method public removeBlockListInEnabledEdgeLightingList(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;",
            ">;)V"
        }
    .end annotation

    .line 455
    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 459
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 460
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 461
    iget-object v4, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string p2, "edge_lighting_settings"

    .line 466
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 467
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo p2, "version"

    .line 468
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "all_application"

    .line 469
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 470
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string p2, "enable_list"

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_1
    return-void
.end method

.method public removeSilentInstalledPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-string v0, "edge_lighting_settings"

    const/4 v1, 0x0

    .line 319
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "removeSilentInstalledPackage : on, packageName = "

    if-eqz v3, :cond_0

    .line 323
    sget-object p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " return own package"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v3, "update_package_name"

    .line 327
    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 328
    iget-object v3, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v5, "update_package_enable"

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 329
    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 331
    :cond_1
    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 334
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 335
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AllApplication = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->setDisablePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 339
    invoke-static {p1, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;ZLjava/util/HashMap;)V

    goto :goto_1

    .line 342
    :cond_2
    sget-object p1, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSilentInstalledPackage : off, packageName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object p1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 344
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "silent_remove_list"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 345
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    .line 349
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "silent_add_list"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 350
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 351
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    .line 356
    :cond_3
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public replaceSilentInstalledPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const-string v0, "edge_lighting_settings"

    const/4 v1, 0x0

    .line 360
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "update_package_name"

    const/4 v4, 0x0

    .line 364
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "update_package_enable"

    .line 365
    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v5, :cond_3

    .line 367
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 368
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 369
    sget-object v5, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "replaceSilentInstalledPackage : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->isEdgeLightingEnabled(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v7, :cond_0

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->setEnablePackage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->setDisablePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 377
    :goto_0
    invoke-static {p1, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mAllApplication:Z

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    .line 378
    invoke-virtual {p2, p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;ZLjava/util/HashMap;)V

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "silent_add_list"

    const-string/jumbo v5, "silent_remove_list"

    if-eqz v7, :cond_2

    .line 382
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    .line 383
    invoke-interface {v7, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 384
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 385
    invoke-direct {p0, v0, p1, v7}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    .line 387
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v5, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 388
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 389
    invoke-direct {p0, v0, v5}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 390
    invoke-direct {p0, v0, v5, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    .line 392
    :cond_2
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    .line 393
    invoke-interface {v7, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-direct {p0, v0, v5}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 395
    invoke-direct {p0, v0, v5, v7}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    .line 397
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    .line 398
    invoke-interface {v5, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 399
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->remove(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0, v0, p1, v5}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->putStringSet(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    .line 405
    :cond_3
    :goto_1
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 406
    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 407
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEnablePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    new-instance v1, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;

    const v2, -0xb37941

    invoke-direct {v1, p2, v2}, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "edge_lighting_settings"

    const/4 v0, 0x0

    .line 485
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 486
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo p2, "version"

    const/4 v0, 0x1

    .line 487
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 488
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string p2, "enable_list"

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 489
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateSilentInstalledPackagesIfNeeds(Landroid/content/Context;)V
    .locals 8

    const-string v0, "edge_lighting_settings"

    const/4 v1, 0x0

    .line 424
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 425
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v2, "silent_add_list"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 426
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    .line 427
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 428
    iget-object v5, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    new-instance v6, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;

    const v7, -0xb37941

    invoke-direct {v6, v3, v7}, Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 431
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 432
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 433
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    .line 435
    :goto_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v3, "silent_remove_list"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 436
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 437
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 438
    iget-object v5, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 441
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 442
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 443
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v0, v4

    :cond_3
    if-eqz v0, :cond_4

    .line 446
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string/jumbo v0, "version"

    .line 447
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "all_application"

    .line 448
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 449
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->mEnableSet:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "enable_list"

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 450
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void
.end method
