.class public interface abstract Lcom/android/systemui/statusbar/policy/dagger/StatusBarPolicyModule;
.super Ljava/lang/Object;
.source "StatusBarPolicyModule.java"


# direct methods
.method public static provideAccessPointControllerImpl(Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;)Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
    .locals 1

    .line 141
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;-><init>(Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$WifiPickerTrackerFactory;)V

    .line 147
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->init()V

    return-object v0
.end method
