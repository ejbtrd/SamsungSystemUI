.class public abstract Lcom/android/systemui/settings/dagger/SettingsModule;
.super Ljava/lang/Object;
.source "SettingsModule.java"


# direct methods
.method static provideUserTracker(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;)Lcom/android/systemui/settings/UserTracker;
    .locals 2

    .line 60
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 61
    new-instance v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/settings/UserTrackerImpl;-><init>(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->initialize(I)V

    return-object v1
.end method
