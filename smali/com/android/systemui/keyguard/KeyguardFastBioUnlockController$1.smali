.class Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFastBioUnlockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperTypeChanged(IZZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 136
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->access$002(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;I)I

    goto :goto_0

    .line 138
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->access$102(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;I)I

    :goto_0
    return-void
.end method
