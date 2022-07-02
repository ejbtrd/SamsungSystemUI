.class public final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$currentUserTracker$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "CustomControlsFavoritingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/CustomControlsController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final startingUser:I

.field final synthetic this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$currentUserTracker$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 109
    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 110
    invoke-static {p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getController$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/controller/ControlsController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/util/UserAwareController;->getCurrentUserId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$currentUserTracker$1;->startingUser:I

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1

    .line 113
    iget v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$currentUserTracker$1;->startingUser:I

    if-eq p1, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 115
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$currentUserTracker$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
