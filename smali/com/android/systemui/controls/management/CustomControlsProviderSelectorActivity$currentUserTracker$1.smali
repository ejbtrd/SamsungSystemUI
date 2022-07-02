.class public final Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$currentUserTracker$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "CustomControlsProviderSelectorActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/management/ControlsListingController;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/CustomControlsController;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final startingUser:I

.field final synthetic this$0:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$currentUserTracker$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    .line 77
    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 78
    invoke-static {p1}, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;->access$getListingController$p(Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;)Lcom/android/systemui/controls/management/ControlsListingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/util/UserAwareController;->getCurrentUserId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$currentUserTracker$1;->startingUser:I

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1

    .line 81
    iget v0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$currentUserTracker$1;->startingUser:I

    if-eq p1, v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 83
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity$currentUserTracker$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsProviderSelectorActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
