.class public Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyManager.java"


# static fields
.field private static final EL_POLICY_ITEM_URI:Landroid/net/Uri;

.field private static final POLICY_ITEM_PROJECTION:[Ljava/lang/String;

.field private static mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;


# instance fields
.field private final mCategoryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyInfoData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPolicyType:I

.field private mPolicyVersion:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 75
    sget-object v0, Lcom/android/systemui/edgelighting/data/policy/PolicyClientContract$PolicyItems;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "EdgeLighting"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->EL_POLICY_ITEM_URI:Landroid/net/Uri;

    const-string v0, "item"

    const-string v1, "category"

    const-string v2, "data1"

    const-string v3, "data2"

    const-string v4, "data3"

    .line 78
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->POLICY_ITEM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    .line 92
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    .line 94
    new-instance v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager$1;-><init>(Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mCategoryComparator:Ljava/util/Comparator;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->fillInEdgeLightingPolicy(Landroid/content/Context;)V

    if-nez p2, :cond_0

    .line 115
    invoke-static {p1}, Lcom/android/systemui/edgelighting/policy/EdgeLightingPolicyUpdateService;->startActionUpdate(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private createPolicyInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;
    .locals 7

    const/4 p0, 0x1

    if-eqz p2, :cond_0

    .line 555
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 558
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v2, p0

    goto :goto_1

    :cond_0
    move p2, p0

    :goto_0
    move v2, p2

    :goto_1
    const p2, -0xb37941

    const/4 v0, 0x0

    if-eq v2, p0, :cond_5

    const/4 v1, 0x2

    if-eq v2, v1, :cond_5

    const/16 v1, 0xa

    if-eq v2, v1, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 602
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "createPolicyInfo : wrong category = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ELPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 584
    :pswitch_0
    new-instance p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_1
    if-eqz p3, :cond_2

    .line 569
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_2

    :catch_1
    move-exception p3

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz p4, :cond_3

    .line 572
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_3
    if-eqz p5, :cond_4

    .line 575
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 578
    :goto_3
    invoke-virtual {p3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_4
    :goto_4
    move v3, p0

    move v5, p2

    move v4, v0

    .line 580
    new-instance p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;IIZI)V

    return-object p0

    :cond_5
    if-eqz p3, :cond_6

    .line 589
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    move p3, p2

    move p2, v0

    goto :goto_7

    :cond_6
    move p0, v0

    :goto_5
    if-eqz p4, :cond_7

    .line 592
    :try_start_3
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_6

    :catch_3
    move-exception p3

    move v6, p2

    move p2, p0

    move-object p0, p3

    move p3, v6

    goto :goto_7

    :cond_7
    :goto_6
    if-eqz p5, :cond_8

    .line 595
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    .line 598
    :goto_7
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v3, p2

    move v4, p3

    goto :goto_9

    :cond_8
    :goto_8
    move v3, p0

    move v4, p2

    :goto_9
    move v5, v0

    .line 600
    new-instance p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;IIII)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private fillInEdgeLightingPolicy(Landroid/content/Context;)V
    .locals 7

    const-string v0, "edge_lighting_policy.json"

    .line 124
    invoke-static {p1, v0}, Lcom/android/systemui/edgelighting/manager/PolicyJSONManager;->existsJsonFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getJsonData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    sget v1, Lcom/android/systemui/R$raw;->edge_lighting_policy:I

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getJsonData(Landroid/content/Context;I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 129
    invoke-direct {p0, v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getJsonVersion(Ljava/lang/StringBuilder;)J

    move-result-wide v3

    .line 130
    invoke-direct {p0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getJsonVersion(Ljava/lang/StringBuilder;)J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_1

    const/4 v2, 0x1

    move-object v0, v1

    :cond_1
    move-object v1, v0

    .line 140
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->parseEdgeLightingInformation(Ljava/lang/StringBuilder;)V

    .line 141
    invoke-direct {p0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->parseEdgeLightingPolicy(Ljava/lang/StringBuilder;)V

    .line 142
    invoke-direct {p0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->parseEdgeLightingPriority(Ljava/lang/StringBuilder;)V

    .line 143
    invoke-direct {p0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->parseEdgeLightingWhiteList(Ljava/lang/StringBuilder;)V

    if-eqz v2, :cond_3

    .line 145
    iget-wide v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    iget v2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/systemui/edgelighting/manager/PolicyJSONManager;->writeJson(Landroid/content/Context;JILandroid/util/SparseArray;)V

    :cond_3
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;
    .locals 1

    .line 103
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    .line 106
    :cond_0
    sget-object p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;

    return-object p0
.end method

.method private getJsonData(Landroid/content/Context;I)Ljava/lang/StringBuilder;
    .locals 3

    .line 187
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 191
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 192
    :try_start_1
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 201
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 204
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    :try_start_4
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_b

    :catch_1
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 207
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 211
    :try_start_6
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_b

    :goto_3
    :try_start_7
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 216
    :goto_4
    throw p0

    :catch_3
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object p2, v0

    goto :goto_c

    :catch_4
    move-exception p2

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object p2, v0

    goto :goto_d

    :catch_5
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 197
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz p1, :cond_2

    .line 201
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_6

    :catchall_3
    move-exception p0

    goto :goto_8

    :catch_6
    move-exception p1

    goto :goto_7

    :cond_2
    :goto_6
    if-eqz p2, :cond_4

    .line 204
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_a

    .line 207
    :goto_7
    :try_start_a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz p2, :cond_5

    .line 211
    :try_start_b
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_b

    :goto_8
    if-eqz p2, :cond_3

    :try_start_c
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_9

    :catch_7
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 216
    :cond_3
    :goto_9
    throw p0

    :cond_4
    :goto_a
    if-eqz p2, :cond_5

    .line 211
    :try_start_d
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    :cond_5
    :goto_b
    return-object p0

    :catchall_4
    move-exception p0

    :goto_c
    move-object v0, p1

    :goto_d
    if-eqz v0, :cond_6

    .line 201
    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catchall_5
    move-exception p0

    goto :goto_10

    :catch_8
    move-exception p1

    goto :goto_f

    :cond_6
    :goto_e
    if-eqz p2, :cond_8

    .line 204
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_12

    .line 207
    :goto_f
    :try_start_f
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz p2, :cond_9

    .line 211
    :try_start_10
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_13

    :goto_10
    if-eqz p2, :cond_7

    :try_start_11
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_11

    :catch_9
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 216
    :cond_7
    :goto_11
    throw p0

    :cond_8
    :goto_12
    if-eqz p2, :cond_9

    .line 211
    :try_start_12
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_13

    :catch_a
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 217
    :cond_9
    :goto_13
    throw p0
.end method

.method private getJsonData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 155
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 156
    :try_start_1
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 157
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 165
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    .line 168
    :cond_1
    :goto_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    :try_start_4
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_c

    :catch_1
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    .line 171
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 175
    :try_start_6
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_c

    :goto_3
    :try_start_7
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    :goto_4
    throw p0

    :catch_3
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object p2, v0

    :goto_5
    move-object v0, p1

    goto :goto_d

    :catch_4
    move-exception p2

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_6

    :catchall_2
    move-exception p0

    move-object p2, v0

    goto :goto_d

    :catch_5
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 161
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz p1, :cond_2

    .line 165
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catchall_3
    move-exception p0

    goto :goto_9

    :catch_6
    move-exception p1

    goto :goto_8

    :cond_2
    :goto_7
    if-eqz p2, :cond_4

    .line 168
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_b

    .line 171
    :goto_8
    :try_start_a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz p2, :cond_5

    .line 175
    :try_start_b
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_c

    :goto_9
    if-eqz p2, :cond_3

    :try_start_c
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_a

    :catch_7
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    :cond_3
    :goto_a
    throw p0

    :cond_4
    :goto_b
    if-eqz p2, :cond_5

    .line 175
    :try_start_d
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    :cond_5
    :goto_c
    return-object p0

    :catchall_4
    move-exception p0

    goto :goto_5

    :goto_d
    if-eqz v0, :cond_6

    .line 165
    :try_start_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_e

    :catchall_5
    move-exception p0

    goto :goto_10

    :catch_8
    move-exception p1

    goto :goto_f

    :cond_6
    :goto_e
    if-eqz p2, :cond_8

    .line 168
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_12

    .line 171
    :goto_f
    :try_start_f
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz p2, :cond_9

    .line 175
    :try_start_10
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_13

    :goto_10
    if-eqz p2, :cond_7

    :try_start_11
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_11

    :catch_9
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    :cond_7
    :goto_11
    throw p0

    :cond_8
    :goto_12
    if-eqz p2, :cond_9

    .line 175
    :try_start_12
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_13

    :catch_a
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    :cond_9
    :goto_13
    throw p0
.end method

.method private getJsonVersion(Ljava/lang/StringBuilder;)J
    .locals 0

    .line 223
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "policy_version"

    .line 224
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 226
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private getMatchedCategory(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    return p1

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getServerPolicyInfoList(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 522
    sget-object v2, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->EL_POLICY_ITEM_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->POLICY_ITEM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "category"

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 525
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 526
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    .line 527
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    .line 528
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x3

    .line 529
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x4

    .line 530
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    .line 531
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->createPolicyInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 522
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_1
    if-eqz p1, :cond_2

    .line 538
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method private handleActionUpdate(Landroid/content/Context;)V
    .locals 4

    const-string v0, "EdgeLighting"

    .line 506
    invoke-static {p1, v0}, Lcom/android/systemui/edgelighting/data/policy/PolicyVersion;->getServerPolicyVersion(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 507
    iget-wide v2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getServerPolicyInfoList(Landroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object v2

    .line 509
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateServerPolicyData(Landroid/content/Context;Ljava/util/ArrayList;J)V

    .line 510
    iget-wide v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    iget v2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/systemui/edgelighting/manager/PolicyJSONManager;->writeJson(Landroid/content/Context;JILandroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method private parseEdgeLightingInformation(Ljava/lang/StringBuilder;)V
    .locals 4

    const-string v0, "policy_type"

    .line 233
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "policy_version"

    .line 234
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    .line 235
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 239
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private parseEdgeLightingPolicy(Ljava/lang/StringBuilder;)V
    .locals 19

    move-object/from16 v0, p0

    const-string/jumbo v1, "versionCode"

    const-string v2, "color"

    const-string/jumbo v3, "range"

    .line 244
    iget-object v4, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 246
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 247
    new-instance v5, Lorg/json/JSONArray;

    const-string v6, "edge_lighting_policy"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 250
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v7, 0x1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_5

    .line 252
    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "item"

    .line 253
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "category"

    .line 254
    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const v12, -0xb37941

    .line 258
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 259
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v16, v13

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    .line 261
    :goto_1
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 262
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    :cond_1
    move/from16 v17, v12

    .line 264
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 265
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 267
    :goto_2
    new-instance v14, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    move-object v12, v14

    move-object v13, v11

    move-object v8, v14

    move v14, v15

    move-object/from16 v18, v1

    move v1, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v10

    invoke-direct/range {v12 .. v17}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;IIII)V

    if-eq v7, v1, :cond_4

    .line 269
    iget-object v10, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v10, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    iget-object v6, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    if-nez v6, :cond_3

    .line 273
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :cond_3
    move v7, v1

    .line 276
    :cond_4
    invoke-virtual {v6, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v18

    goto :goto_0

    .line 278
    :cond_5
    iget-object v0, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private parseEdgeLightingPriority(Ljava/lang/StringBuilder;)V
    .locals 16

    const-string v0, "color"

    const-string v1, "default_on"

    const-string v2, "priority"

    .line 286
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 287
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 288
    new-instance v5, Lorg/json/JSONArray;

    const-string v6, "edge_lighting_priority"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_3

    .line 291
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "item"

    .line 292
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    const v10, -0xb37941

    .line 296
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 297
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 299
    :cond_0
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 300
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    move v14, v11

    goto :goto_1

    :cond_1
    move v14, v6

    .line 302
    :goto_1
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 303
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    move v15, v8

    goto :goto_2

    :cond_2
    move v15, v10

    .line 305
    :goto_2
    new-instance v8, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    const/16 v12, 0xa

    move-object v10, v8

    move-object v11, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    .line 307
    iget-object v0, v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 309
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private parseEdgeLightingWhiteList(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 315
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 316
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 317
    new-instance p1, Lorg/json/JSONArray;

    const-string v2, "edge_lighting_whitelist"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xb

    if-ge v2, v1, :cond_0

    .line 320
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "item"

    .line 321
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 322
    new-instance v5, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    invoke-direct {v5, v4, v3}, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {p0, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 326
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private updateServerPolicyData(Landroid/content/Context;Ljava/util/ArrayList;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;",
            ">;J)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 608
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mCategoryComparator:Ljava/util/Comparator;

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 612
    iput-wide p3, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    const/4 p3, 0x1

    .line 614
    iget-object p4, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/HashMap;

    if-nez p4, :cond_1

    .line 616
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 618
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 622
    iget v1, v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    invoke-direct {p0, v1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->getMatchedCategory(I)I

    move-result v1

    if-eq p3, v1, :cond_3

    .line 624
    iget-object v2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {v2, p3, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 626
    iget-object p3, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    if-nez p3, :cond_2

    .line 628
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_2
    move-object p4, p3

    move p3, v1

    .line 631
    :cond_3
    iget v1, v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->category:I

    packed-switch v1, :pswitch_data_0

    .line 638
    iget-object v1, v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    invoke-virtual {p4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 635
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 642
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {p2, p3, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 646
    invoke-static {p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;

    move-result-object p2

    .line 647
    iget-object p3, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->removeBlockListInEnabledEdgeLightingList(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 648
    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->isAllApplicationEnabled()Z

    move-result p3

    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSettingManager;->getEnabledEdgeLightingItems()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->updateEdgeLightingPolicy(Landroid/content/Context;ZLjava/util/HashMap;)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getEdgeLightingColor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "com.samsung.android.messaging"

    .line 396
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-static {p1, p2}, Lcom/android/systemui/edgelighting/utils/Utils;->getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const v2, 0x1dcd6500

    if-ge v1, v2, :cond_0

    const p0, 0xf2721c

    return p0

    :cond_0
    const v1, -0xb37941

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    if-eqz v0, :cond_1

    .line 403
    iget v0, v0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    if-eq v0, v1, :cond_1

    return v0

    .line 407
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_2

    .line 409
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    if-eqz p0, :cond_2

    .line 410
    iget p0, p0, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->color:I

    if-eq p0, v1, :cond_2

    return p0

    .line 415
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getAppInfoSupportingEdgeLighting(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 417
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 418
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 419
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 420
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 421
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 422
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 426
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 428
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getAppIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 430
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils;->getApplicationIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_5

    .line 436
    invoke-static {p0}, Lcom/android/systemui/edgelighting/utils/ExtractAppIconUtils;->processDominantColorInImage(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    .line 437
    invoke-static {p1, p2, p0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->saveAppCustomColor(Landroid/content/Context;Ljava/lang/String;I)V

    .line 438
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Extract color : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ELPolicyManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_5
    return v1
.end method

.method public getPolicyInfoByCategory(I)Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 497
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method public getPolicyType()I
    .locals 0

    .line 484
    iget p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    return p0
.end method

.method public getPriorityMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 488
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method public getWhiteListMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;",
            ">;"
        }
    .end annotation

    .line 492
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method public updateEdgeLightingPolicy(Landroid/content/Context;ZLjava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/data/EdgeLightingSettingItem;",
            ">;)V"
        }
    .end annotation

    const-string p3, "edge"

    .line 331
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/edge/SemEdgeManager;

    if-nez p3, :cond_0

    return-void

    .line 336
    :cond_0
    iget v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    or-int/lit8 p2, v0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 p2, v0, -0x2

    .line 342
    :goto_0
    new-instance v0, Lcom/samsung/android/edge/EdgeLightingPolicy;

    invoke-direct {v0}, Lcom/samsung/android/edge/EdgeLightingPolicy;-><init>()V

    .line 343
    invoke-virtual {v0, p2}, Lcom/samsung/android/edge/EdgeLightingPolicy;->setPolicyType(I)V

    .line 344
    iget-wide v2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyVersion:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/edge/EdgeLightingPolicy;->setPolicyVersion(J)V

    .line 347
    iget-object p2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-eqz p2, :cond_2

    .line 349
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 350
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 351
    new-instance v3, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    iget-object v4, v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    iget v2, v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    invoke-direct {v3, v4, v1, v2}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/edge/EdgeLightingPolicy;->addEdgeLightingPolicyInfo(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    goto :goto_1

    .line 354
    :cond_2
    iget p2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyType:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_3

    .line 355
    iget-object p2, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-eqz p2, :cond_3

    .line 357
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 358
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    .line 359
    new-instance v3, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    iget-object v4, v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    iget v2, v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->range:I

    invoke-direct {v3, v4, v1, v2}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/edge/EdgeLightingPolicy;->addEdgeLightingPolicyInfo(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V

    goto :goto_2

    .line 371
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->mPolicyInfoData:Landroid/util/SparseArray;

    const/16 p2, 0xa

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 372
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 374
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    iget-object v2, v2, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 375
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/data/policy/PolicyInfo;->item:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 376
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 379
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "edge_lighting_recommend_app_list"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 381
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " update Policy : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/edge/EdgeLightingPolicy;->getEdgeLightingPolicyInfoList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ELPolicyManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p3, v0}, Lcom/samsung/android/edge/SemEdgeManager;->updateEdgeLightingPolicy(Lcom/samsung/android/edge/EdgeLightingPolicy;)V

    return-void
.end method

.method public updateEdgeLightingServerPolicy(Landroid/content/Context;)V
    .locals 3

    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.sm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateEdgeLightingServerPolicy : isSCPMClientExist = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ELPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    .line 389
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingPolicyManager;->handleActionUpdate(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
