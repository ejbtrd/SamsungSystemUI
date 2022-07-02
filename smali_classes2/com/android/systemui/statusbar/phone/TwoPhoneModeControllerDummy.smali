.class public Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerDummy;
.super Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;
.source "TwoPhoneModeControllerDummy.java"


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;)V

    return-void
.end method


# virtual methods
.method public inflateIcon(Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;)Landroid/widget/ImageView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isOnFeature()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    return-void
.end method

.method public showDoneToast(I)V
    .locals 0

    return-void
.end method

.method public updateTwoPhoneIcons()V
    .locals 0

    return-void
.end method
