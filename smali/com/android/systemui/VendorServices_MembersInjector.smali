.class public final Lcom/android/systemui/VendorServices_MembersInjector;
.super Ljava/lang/Object;
.source "VendorServices_MembersInjector.java"


# direct methods
.method public static injectMBinderCallMonitor(Lcom/android/systemui/VendorServices;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/systemui/VendorServices;->mBinderCallMonitor:Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;

    return-void
.end method

.method public static injectMUiThreadMonitor(Lcom/android/systemui/VendorServices;Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/systemui/VendorServices;->mUiThreadMonitor:Lcom/android/systemui/uithreadmonitor/UiThreadMonitor;

    return-void
.end method
