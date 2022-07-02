.class public Lcom/android/systemui/navigationbar/interactor/GestureHintInteractor;
.super Ljava/lang/Object;
.source "GestureHintInteractor.java"


# instance fields
.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/GestureHintInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/GestureHintInteractor;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    move-result p0

    return p0
.end method
