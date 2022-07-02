.class Lcom/android/wifitrackerlib/WifiPickerTracker$ActiveDataSubIdListener;
.super Landroid/telephony/TelephonyCallback;
.source "WifiPickerTracker.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifitrackerlib/WifiPickerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveDataSubIdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;


# direct methods
.method private constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;)V
    .locals 0

    .line 1313
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$ActiveDataSubIdListener;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 1314
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wifitrackerlib/WifiPickerTracker;Lcom/android/wifitrackerlib/WifiPickerTracker$1;)V
    .locals 0

    .line 1311
    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker$ActiveDataSubIdListener;-><init>(Lcom/android/wifitrackerlib/WifiPickerTracker;)V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 0

    .line 1320
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiPickerTracker$ActiveDataSubIdListener;->this$0:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->access$200(Lcom/android/wifitrackerlib/WifiPickerTracker;I)V

    return-void
.end method
