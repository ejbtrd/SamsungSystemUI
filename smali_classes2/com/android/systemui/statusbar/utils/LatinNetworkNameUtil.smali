.class public final Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;
.super Ljava/lang/Object;
.source "LatinNetworkNameUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLatinNetworkNameUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LatinNetworkNameUtil.kt\ncom/android/systemui/statusbar/utils/LatinNetworkNameUtil\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,312:1\n37#2,2:313\n37#2,2:338\n37#2,2:363\n99#3:315\n71#3,22:316\n99#3:340\n71#3,22:341\n*E\n*S KotlinDebug\n*F\n+ 1 LatinNetworkNameUtil.kt\ncom/android/systemui/statusbar/utils/LatinNetworkNameUtil\n*L\n123#1,2:313\n144#1,2:338\n145#1,2:363\n144#1:315\n144#1,22:316\n145#1:340\n145#1,22:341\n*E\n"
.end annotation


# instance fields
.field private final NETWORK_MANUALLY_SELECTED:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final NETWORK_MANUALLY_SELECTED_PHONE_ID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mCBMsgBody:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCellBroadcastServiceConnection:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mLastDataSpn:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mLastPlmn:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mLastShowPlmn:Z

.field private mLastShowSpn:Z

.field private mLastSpn:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mNetworkManuallySelected:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mShowCBMsg:Z

.field private mSlotId:I

.field private mTag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mSlotId:I

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LatinUtil (slot"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mSlotId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    const-string/jumbo p1, "network_manually_selected"

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->NETWORK_MANUALLY_SELECTED:Ljava/lang/String;

    const-string/jumbo p1, "network_manually_selected_phone_id"

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->NETWORK_MANUALLY_SELECTED_PHONE_ID:Ljava/lang/String;

    return-void
.end method

.method private final getAreaInfo(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "phone"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mTelephonyManager.networkOperator"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->setAreaCode(Landroid/telephony/TelephonyManager;I)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    const-string p2, "getAreaInfo e="

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "areaInfo.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getCellBroadcastServicePackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "mContext.getPackageManager()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.CellBroadcastService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x100000

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCellBroadcastServicePackageName: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " CBS packages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 200
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 202
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    .line 203
    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "getCellBroadcastServicePackageName: "

    if-nez v2, :cond_2

    .line 204
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 207
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not have READ_PRIVILEGED_PHONE_STATE permission"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    const-string v2, "getCellBroadcastServicePackageName: found a CBS package but packageName is null/empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    const-string p1, "getCellBroadcastServicePackageName: package name not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private final getCodeToState(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p0, ""

    goto/16 :goto_0

    :pswitch_1
    const-string p0, "MA"

    goto/16 :goto_0

    :pswitch_2
    const-string p0, "AP"

    goto :goto_0

    :pswitch_3
    const-string p0, "RR"

    goto :goto_0

    :pswitch_4
    const-string p0, "AM"

    goto :goto_0

    :pswitch_5
    const-string p0, "PA"

    goto :goto_0

    :pswitch_6
    const-string p0, "PI"

    goto :goto_0

    :pswitch_7
    const-string p0, "CE"

    goto :goto_0

    :pswitch_8
    const-string p0, "RN"

    goto :goto_0

    :pswitch_9
    const-string p0, "PB"

    goto :goto_0

    :pswitch_a
    const-string p0, "AL"

    goto :goto_0

    :pswitch_b
    const-string p0, "PE"

    goto :goto_0

    :pswitch_c
    const-string p0, "SE"

    goto :goto_0

    :pswitch_d
    const-string p0, "BA"

    goto :goto_0

    :pswitch_e
    const-string p0, "RO"

    goto :goto_0

    :pswitch_f
    const-string p0, "AC"

    goto :goto_0

    :pswitch_10
    const-string p0, "MS"

    goto :goto_0

    :pswitch_11
    const-string p0, "MT"

    goto :goto_0

    :pswitch_12
    const-string p0, "TO"

    goto :goto_0

    :pswitch_13
    const-string p0, "GO"

    goto :goto_0

    :pswitch_14
    const-string p0, "DF"

    goto :goto_0

    :pswitch_15
    const-string p0, "RS"

    goto :goto_0

    :pswitch_16
    const-string p0, "SC"

    goto :goto_0

    :pswitch_17
    const-string p0, "PR"

    goto :goto_0

    :pswitch_18
    const-string p0, "MG"

    goto :goto_0

    :pswitch_19
    const-string p0, "ES"

    goto :goto_0

    :pswitch_1a
    const-string p0, "RJ"

    goto :goto_0

    :pswitch_1b
    const-string p0, "SP"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_0
        :pswitch_1a
        :pswitch_1a
        :pswitch_0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_0
        :pswitch_18
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_13
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private final getVoiceNetworkType(Landroid/telephony/ServiceState;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p0

    return p0
.end method

.method private final isNetworkAndSimZVV(I)Z
    .locals 13

    const-string v0, "gsm.sim.operator.numeric"

    .line 144
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "get(\"gsm.sim.operator.numeric\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/16 v6, 0x20

    if-gt v4, v1, :cond_5

    if-nez v5, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    move v7, v1

    .line 77
    :goto_1
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 144
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_1

    move v7, v2

    goto :goto_2

    :cond_1
    move v7, v3

    :goto_2
    if-nez v5, :cond_3

    if-nez v7, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v1, v2

    .line 92
    invoke-interface {v0, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, ","

    .line 144
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/String;

    .line 38
    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    check-cast v1, [Ljava/lang/String;

    const-string v5, "gsm.operator.numeric"

    .line 145
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "get(\"gsm.operator.numeric\")"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v2

    move v8, v3

    move v9, v8

    :goto_4
    if-gt v8, v7, :cond_b

    if-nez v9, :cond_6

    move v10, v8

    goto :goto_5

    :cond_6
    move v10, v7

    .line 77
    :goto_5
    invoke-interface {v5, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 145
    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v10

    if-gtz v10, :cond_7

    move v10, v2

    goto :goto_6

    :cond_7
    move v10, v3

    :goto_6
    if-nez v9, :cond_9

    if-nez v10, :cond_8

    move v9, v2

    goto :goto_4

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    if-nez v10, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_b
    :goto_7
    add-int/2addr v7, v2

    .line 92
    invoke-interface {v5, v8, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 99
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 145
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-array v5, v3, [Ljava/lang/String;

    .line 38
    invoke-interface {v0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    check-cast v0, [Ljava/lang/String;

    .line 146
    array-length v4, v1

    if-le v4, p1, :cond_c

    aget-object v4, v1, p1

    if-eqz v4, :cond_c

    aget-object v1, v1, p1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->isZVVMccMnc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 147
    array-length v1, v0

    if-le v1, p1, :cond_c

    aget-object v1, v0, p1

    if-eqz v1, :cond_c

    aget-object p1, v0, p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->isZVVMccMnc(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v2

    :cond_c
    return v3
.end method

.method private final isNetworkRoamingForZVV(I)Z
    .locals 7

    const-string p0, "gsm.operator.isroaming"

    const-string v0, "false, false"

    .line 123
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "get(\"gsm.operator.isroaming\", \"false, false\")"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ","

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 38
    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    check-cast p0, [Ljava/lang/String;

    .line 124
    array-length v1, p0

    const-string/jumbo v2, "true"

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 125
    aget-object p0, p0, p1

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 129
    :cond_0
    aget-object p0, p0, v0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    move v0, v3

    :cond_1
    return v0
.end method

.method private final isZVVMccMnc(Ljava/lang/String;)Z
    .locals 3

    const-string p0, "72406"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 137
    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "72410"

    .line 138
    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "72411"

    .line 139
    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "72423"

    .line 140
    invoke-static {p1, p0, v0, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private final setAreaCode(Landroid/telephony/TelephonyManager;I)Ljava/lang/StringBuilder;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getCellLocationBySubId(I)Landroid/telephony/CellLocation;

    move-result-object p1

    const-string/jumbo p2, "mTelephonyManager.getCellLocationBySubId(mSubId)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 108
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/16 p2, 0xff

    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_0

    const p2, 0xffff

    if-eq p1, p2, :cond_0

    .line 111
    rem-int/lit8 p1, p1, 0x64

    .line 112
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getCodeToState(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    const-string/jumbo p1, "setAreaCode areaInfo="

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method public final bindCellBroadcastService(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mCellBroadcastServiceConnection:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.CellBroadcastService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getCellBroadcastServicePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mCellBroadcastServiceConnection:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;->getMService()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mCellBroadcastServiceConnection:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 182
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    const-string p1, "Unable to bind to service"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    const-string/jumbo p1, "skipping bindService because connection already exists"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final getCellBroadcastMessage(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mCellBroadcastServiceConnection:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;

    if-eqz v0, :cond_0

    .line 220
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;->getMService()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ICellBroadcastService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellBroadcastService;

    move-result-object v0

    const-string v1, "asInterface(mCellBroadcastServiceConnection!!.mService)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    :try_start_0
    invoke-interface {v0, p1}, Landroid/telephony/ICellBroadcastService;->getCellBroadcastAreaInfo(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 225
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    const-string v0, "Can\'t get cell broadcast msg on channel 50. e ="

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getMCBMsgBody()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mCBMsgBody:Ljava/lang/String;

    return-object p0
.end method

.method public final getMLastDataSpn()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastDataSpn:Ljava/lang/String;

    return-object p0
.end method

.method public final getMLastPlmn()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastPlmn:Ljava/lang/String;

    return-object p0
.end method

.method public final getMLastShowPlmn()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastShowPlmn:Z

    return p0
.end method

.method public final getMLastShowSpn()Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastShowSpn:Z

    return p0
.end method

.method public final getMLastSpn()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastSpn:Ljava/lang/String;

    return-object p0
.end method

.method public final getMShowCBMsg()Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mShowCBMsg:Z

    return p0
.end method

.method public final getNETWORK_MANUALLY_SELECTED()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->NETWORK_MANUALLY_SELECTED:Ljava/lang/String;

    return-object p0
.end method

.method public final getNETWORK_MANUALLY_SELECTED_PHONE_ID()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->NETWORK_MANUALLY_SELECTED_PHONE_ID:Ljava/lang/String;

    return-object p0
.end method

.method public final isGSM(Landroid/telephony/TelephonyDisplayInfo;Landroid/telephony/ServiceState;)Z
    .locals 3
    .param p1    # Landroid/telephony/TelephonyDisplayInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/telephony/ServiceState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "mTelephonyDisplayInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result p1

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isGsmLATIN(): "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    .line 159
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getVoiceNetworkType(Landroid/telephony/ServiceState;)I

    move-result p1

    :cond_1
    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/16 p2, 0x10

    if-eq p1, p2, :cond_2

    const/4 p0, 0x0

    :cond_2
    return p0
.end method

.method public final setLastNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 233
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastShowSpn:Z

    .line 234
    iput-object p2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastSpn:Ljava/lang/String;

    .line 235
    iput-object p3, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastDataSpn:Ljava/lang/String;

    .line 236
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastShowPlmn:Z

    .line 237
    iput-object p5, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastPlmn:Ljava/lang/String;

    return-void
.end method

.method public final setMCBMsgBody(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mCBMsgBody:Ljava/lang/String;

    return-void
.end method

.method public final setMNetworkManuallySelected(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mNetworkManuallySelected:Ljava/lang/String;

    return-void
.end method

.method public final setMShowCBMsg(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mShowCBMsg:Z

    return-void
.end method

.method public final unBindCellBroadcastService()V
    .locals 1

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mCellBroadcastServiceConnection:Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;

    return-void
.end method

.method public final updateNetworkNameLAC(Landroid/content/Context;ZZZ)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkNameLatinLAC showSpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " spn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastShowSpn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " dataSpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastDataSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " showPlmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastShowPlmn:Z

    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " plmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastPlmn:Ljava/lang/String;

    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastPlmn:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const/16 v2, 0xa

    if-nez p3, :cond_1

    .line 292
    iget p3, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mSlotId:I

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->isNetworkRoamingForZVV(I)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastPlmn:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastPlmn:Ljava/lang/String;

    .line 294
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastShowPlmn:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastShowSpn:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastSpn:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastSpn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_8

    if-nez p4, :cond_8

    .line 297
    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastSpn:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 298
    iget p2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mSlotId:I

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->isNetworkAndSimZVV(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mSlotId:I

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->getAreaInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 299
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastShowPlmn:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastShowSpn:Z

    if-eqz p1, :cond_4

    .line 300
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastSpn:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eqz v0, :cond_5

    .line 301
    iget-object p4, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastSpn:Ljava/lang/String;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, p4, p3, p2, p1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    :cond_5
    iget-object p4, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastPlmn:Ljava/lang/String;

    if-eqz p4, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastSpn:Ljava/lang/String;

    invoke-static {p4, v0, p3, p2, p1}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 302
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastPlmn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastSpn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 304
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastSpn:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 307
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    const-string/jumbo p1, "updateNetworkNameLatinLAC final text = "

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final updateNetworkNameLatin(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;Lcom/android/settingslib/SignalIcon$MobileState;Landroid/content/Context;ZZZ)Ljava/lang/String;
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/settingslib/SignalIcon$MobileState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "mOperatorInfraMediator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkNameLatin showSpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastShowPlmn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " spn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " dataSpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastDataSpn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " showPlmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastShowPlmn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " plmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastPlmn:Ljava/lang/String;

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " showCB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastShowSpn:Z

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " CBmsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mCBMsgBody:Ljava/lang/String;

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " VoWifiConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v2, p2, Lcom/android/settingslib/SignalIcon$MobileState;->voWifiConnected:Z

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mNetworkManuallySelected:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v2, "updateNetworkNameLatin mNetworkManuallySelected="

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "updateNetworkNameLatin mNetworkManuallySelected=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;->IS_CLARO_BRAZIL_PLMN_BRANDING:Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;

    iget v1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mSlotId:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator;->isEnabled(Lcom/android/systemui/statusbar/utils/operator/OperatorInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_3

    iget-boolean p1, p2, Lcom/android/settingslib/SignalIcon$MobileState;->voWifiConnected:Z

    if-eqz p1, :cond_3

    .line 272
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastPlmn:Ljava/lang/String;

    if-nez p1, :cond_1

    move-object p1, v0

    .line 273
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastSpn:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastDataSpn:Ljava/lang/String;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastDataSpn:Ljava/lang/String;

    move-object v0, p0

    goto :goto_2

    :cond_2
    move-object v0, p1

    goto :goto_2

    .line 274
    :cond_3
    iget-boolean p1, p2, Lcom/android/settingslib/SignalIcon$MobileState;->airplaneMode:Z

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    if-nez p6, :cond_6

    const p1, 0x1040443

    .line 276
    invoke-virtual {p3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastPlmn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 283
    :cond_5
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->updateNetworkNameLAC(Landroid/content/Context;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 277
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mNetworkManuallySelected:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget p2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mSlotId:I

    if-ltz p2, :cond_7

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mNetworkManuallySelected:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastPlmn:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 280
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;->mLastPlmn:Ljava/lang/String;

    :goto_2
    return-object v0
.end method
