.class public Lcom/android/systemui/navigationbar/util/RotationUtil;
.super Ljava/lang/Object;
.source "RotationUtil.java"


# static fields
.field private static sFloatingButtonPosition:I


# direct methods
.method public static getFloatingRotationButtonPosition()I
    .locals 1

    .line 74
    sget v0, Lcom/android/systemui/navigationbar/util/RotationUtil;->sFloatingButtonPosition:I

    return v0
.end method

.method public static getRotateButtonStyle(II)I
    .locals 2

    .line 32
    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/util/RotationUtil;->isRotationCCW(II)Z

    move-result v0

    if-eqz p0, :cond_6

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_4

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    if-ne p1, v0, :cond_2

    .line 42
    sget p0, Lcom/android/systemui/R$style;->SamsungRotateButtonCWDegree180:I

    goto :goto_2

    :cond_2
    if-ne p0, v0, :cond_3

    if-ne p1, v1, :cond_3

    .line 44
    sget p0, Lcom/android/systemui/R$style;->SamsungRotateButtonCCWDegree180:I

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 39
    sget p0, Lcom/android/systemui/R$style;->SamsungRotateButtonCCWStart0:I

    goto :goto_2

    .line 40
    :cond_5
    sget p0, Lcom/android/systemui/R$style;->SamsungRotateButtonCWStart0:I

    goto :goto_2

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 35
    sget p0, Lcom/android/systemui/R$style;->SamsungRotateButtonCCWStart90:I

    goto :goto_2

    .line 36
    :cond_7
    sget p0, Lcom/android/systemui/R$style;->SamsungRotateButtonCWStart90:I

    :goto_2
    return p0
.end method

.method public static isRotateButtonDisabledByPolicy()Z
    .locals 3

    .line 51
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarRotateSuggestionEnabled()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 52
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public static isRotationCCW(II)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-nez p0, :cond_1

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez p0, :cond_2

    if-ne p1, v3, :cond_2

    return v2

    :cond_2
    if-ne p0, v0, :cond_3

    if-nez p1, :cond_3

    return v2

    :cond_3
    if-ne p0, v0, :cond_4

    if-ne p1, v1, :cond_4

    return v2

    :cond_4
    if-ne p0, v0, :cond_5

    if-ne p1, v3, :cond_5

    return v0

    :cond_5
    if-ne p0, v1, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    if-ne p0, v1, :cond_7

    if-ne p1, v0, :cond_7

    return v2

    :cond_7
    if-ne p0, v1, :cond_8

    if-ne p1, v3, :cond_8

    return v0

    :cond_8
    if-ne p0, v3, :cond_9

    if-nez p1, :cond_9

    return v0

    :cond_9
    if-ne p0, v3, :cond_a

    if-ne p1, v0, :cond_a

    return v0

    :cond_a
    if-ne p0, v3, :cond_b

    if-ne p1, v1, :cond_b

    return v0

    :cond_b
    return v2
.end method

.method public static setFloatingRotationButtonPosition(II)V
    .locals 6

    const/16 v0, 0x53

    const/4 v1, 0x1

    if-nez p0, :cond_0

    if-ne p1, v1, :cond_0

    .line 58
    sput v0, Lcom/android/systemui/navigationbar/util/RotationUtil;->sFloatingButtonPosition:I

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x33

    const/4 v3, 0x2

    if-nez p0, :cond_1

    if-ne p1, v3, :cond_1

    .line 59
    sput v2, Lcom/android/systemui/navigationbar/util/RotationUtil;->sFloatingButtonPosition:I

    goto :goto_0

    :cond_1
    const/16 v4, 0x35

    const/4 v5, 0x3

    if-nez p0, :cond_2

    if-ne p1, v5, :cond_2

    .line 60
    sput v4, Lcom/android/systemui/navigationbar/util/RotationUtil;->sFloatingButtonPosition:I

    goto :goto_0

    :cond_2
    if-ne p0, v1, :cond_3

    if-nez p1, :cond_3

    .line 61
    sput v4, Lcom/android/systemui/navigationbar/util/RotationUtil;->sFloatingButtonPosition:I

    goto :goto_0

    :cond_3
    if-ne p0, v1, :cond_4

    if-ne p1, v3, :cond_4

    .line 62
    sput v0, Lcom/android/systemui/navigationbar/util/RotationUtil;->sFloatingButtonPosition:I

    goto :goto_0

    :cond_4
    if-ne p0, v1, :cond_5

    if-ne p1, v5, :cond_5

    .line 63
    sput v2, Lcom/android/systemui/navigationbar/util/RotationUtil;->sFloatingButtonPosition:I

    goto :goto_0

    :cond_5
    if-ne p0, v3, :cond_6

    if-nez p1, :cond_6

    .line 64
    sput v2, Lcom/android/systemui/navigationbar/util/RotationUtil;->sFloatingButtonPosition:I

    goto :goto_0

    :cond_6
    if-ne p0, v3, :cond_7

    if-ne p1, v1, :cond_7

    .line 65
    sput v4, Lcom/android/systemui/navigationbar/util/RotationUtil;->sFloatingButtonPosition:I

    goto :goto_0

    :cond_7
    if-ne p0, v3, :cond_8

    if-ne p1, v5, :cond_8

    .line 66
    sput v0, Lcom/android/systemui/navigationbar/util/RotationUtil;->sFloatingButtonPosition:I

    goto :goto_0

    :cond_8
    if-ne p0, v5, :cond_9

    if-nez p1, :cond_9

    .line 67
    sput v0, Lcom/android/systemui/navigationbar/util/RotationUtil;->sFloatingButtonPosition:I

    goto :goto_0

    :cond_9
    if-ne p0, v5, :cond_a

    if-ne p1, v1, :cond_a

    .line 68
    sput v2, Lcom/android/systemui/navigationbar/util/RotationUtil;->sFloatingButtonPosition:I

    goto :goto_0

    :cond_a
    if-ne p0, v5, :cond_b

    if-ne p1, v3, :cond_b

    .line 69
    sput v4, Lcom/android/systemui/navigationbar/util/RotationUtil;->sFloatingButtonPosition:I

    goto :goto_0

    :cond_b
    const/16 p0, 0x55

    .line 70
    sput p0, Lcom/android/systemui/navigationbar/util/RotationUtil;->sFloatingButtonPosition:I

    :goto_0
    return-void
.end method
