.class public final Lcom/android/systemui/statusbar/events/PrivacyDotViewController$privacyInsetsCallback$1;
.super Ljava/lang/Object;
.source "PrivacyDotViewController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/events/PrivacyDotViewController;-><init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$privacyInsetsCallback$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowInsetsUpdated(Z)V
    .locals 1

    const-string/jumbo v0, "onStatusBarContentWindowInsetsChanged: "

    .line 84
    invoke-static {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$privacyInsetsCallback$1;->this$0:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->access$setNewLayoutRectForWindowInset(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Z)V

    return-void
.end method
