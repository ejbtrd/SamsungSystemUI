.class public final Lcom/android/systemui/media/MediaHierarchyManager$1;
.super Ljava/lang/Object;
.source "MediaHierarchyManager.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHierarchyManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaHierarchyManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager$1;->this$0:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-static {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->access$updateConfiguration(Lcom/android/systemui/media/MediaHierarchyManager;)V

    return-void
.end method
