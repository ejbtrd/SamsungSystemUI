.class Lcom/android/systemui/util/SettingsHelper$Item;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Item"
.end annotation


# instance fields
.field mCachedIntegrity:Z

.field mDataType:Ljava/lang/String;

.field mDef:Ljava/lang/Integer;

.field mForUser:Ljava/lang/String;

.field mIntValue:I

.field mIsUserAll:Z

.field mKey:Ljava/lang/String;

.field mSettingType:Ljava/lang/String;

.field mStringValue:Ljava/lang/String;

.field mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 1418
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZZ)V
    .locals 0

    .line 1421
    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1407
    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mUri:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 1412
    iput-boolean p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z

    .line 1422
    iput-object p2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mSettingType:Ljava/lang/String;

    .line 1423
    iput-object p3, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    .line 1424
    iput-object p4, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    .line 1425
    iput-object p5, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDef:Ljava/lang/Integer;

    if-eqz p6, :cond_0

    const-string p1, "ForUser"

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 1426
    :goto_0
    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mForUser:Ljava/lang/String;

    .line 1427
    iput-boolean p7, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIsUserAll:Z

    const-string p1, "Global"

    .line 1429
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mSettingType:Ljava/lang/String;

    const-string p2, "Secure"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mSettingType:Ljava/lang/String;

    const-string p2, "System"

    .line 1430
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 1431
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid setting type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1433
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1436
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    const-string p2, "Int"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    const-string p2, "String"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 1437
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid data type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1440
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mUri:Landroid/net/Uri;

    return-void

    .line 1434
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid setting key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$500(Lcom/android/systemui/util/SettingsHelper$Item;)Ljava/lang/String;
    .locals 0

    .line 1404
    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/util/SettingsHelper$Item;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 1404
    invoke-direct {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getKey()Ljava/lang/String;
    .locals 0

    .line 1444
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    .line 1448
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 1451
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.provider.Settings$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "getUriFor"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 1452
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 1453
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SettingsHelper"

    const-string v1, "Exception occurred"

    .line 1456
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 3

    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1556
    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    .line 1557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1558
    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    const-string v2, "Int"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1559
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1560
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    const-string v2, "String"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1561
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Landroid/net/Uri;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1518
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getIntValue()I
    .locals 1

    .line 1522
    iget-boolean v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z

    if-nez v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/util/SettingsHelper;->access$100(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/util/SettingsHelper;->access$100(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    .line 1527
    :cond_0
    iget p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 1531
    iget-boolean v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z

    if-nez v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/util/SettingsHelper;->access$100(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1533
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/util/SettingsHelper;->access$100(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    .line 1536
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mStringValue:Ljava/lang/String;

    return-object p0
.end method

.method public isCachedIntegrity()Z
    .locals 0

    .line 1551
    iget-boolean p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z

    return p0
.end method

.method public read(Landroid/content/ContentResolver;)V
    .locals 12

    .line 1463
    const-class v0, Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.provider.Settings$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1465
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mForUser:Ljava/lang/String;

    const-string v3, "ForUser"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "get"

    const-string v4, "String"

    const-string v5, "Int"

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v2, :cond_4

    .line 1466
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDef:Ljava/lang/Integer;

    const/4 v10, -0x2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1476
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mForUser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v11, Landroid/content/ContentResolver;

    aput-object v11, v4, v7

    aput-object v0, v4, v9

    .line 1477
    iget-object v11, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :cond_1
    aput-object v0, v4, v8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v4, v6

    .line 1476
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1479
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v7

    .line 1480
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    aput-object p1, v2, v9

    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDef:Ljava/lang/Integer;

    aput-object p1, v2, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    goto/16 :goto_2

    .line 1467
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mForUser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Class;

    const-class v11, Landroid/content/ContentResolver;

    aput-object v11, v3, v7

    aput-object v0, v3, v9

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1470
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v7

    .line 1471
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    aput-object p1, v2, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    goto/16 :goto_2

    .line 1472
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v7

    .line 1473
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    aput-object p1, v2, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mStringValue:Ljava/lang/String;

    goto/16 :goto_2

    .line 1484
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDef:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 1493
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v3, v7

    aput-object v0, v3, v9

    .line 1494
    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :cond_6
    aput-object v0, v3, v8

    .line 1493
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1495
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v7

    .line 1496
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    aput-object p1, v2, v9

    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDef:Ljava/lang/Integer;

    aput-object p1, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    goto :goto_2

    .line 1485
    :cond_7
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Class;

    const-class v6, Landroid/content/ContentResolver;

    aput-object v6, v3, v7

    aput-object v0, v3, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1487
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v7

    .line 1488
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    aput-object p1, v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    goto :goto_2

    .line 1489
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v7

    .line 1490
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    aput-object p1, v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mStringValue:Ljava/lang/String;

    .line 1500
    :cond_9
    :goto_2
    iput-boolean v9, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "SettingsHelper"

    const-string v0, "Exception occurred"

    .line 1503
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public registerObserver()V
    .locals 4

    .line 1511
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/util/SettingsHelper;->access$100(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/util/SettingsHelper;->access$400(Lcom/android/systemui/util/SettingsHelper;)Landroid/database/ContentObserver;

    move-result-object v2

    iget-boolean p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIsUserAll:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public resetCachedIntegrity()V
    .locals 1

    const/4 v0, 0x0

    .line 1548
    iput-boolean v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z

    return-void
.end method

.method public setIntValue(I)V
    .locals 0

    .line 1540
    iput p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    return-void
.end method
