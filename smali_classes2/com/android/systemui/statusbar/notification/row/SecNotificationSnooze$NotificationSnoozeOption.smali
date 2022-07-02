.class public Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;
.super Ljava/lang/Object;
.source "SecNotificationSnooze.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper$SnoozeOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationSnoozeOption"
.end annotation


# instance fields
.field private mAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field private mConfirmation:Ljava/lang/CharSequence;

.field private mCriterion:Landroid/service/notification/SnoozeCriterion;

.field private mDescription:Ljava/lang/CharSequence;

.field private mMinutesToSnoozeFor:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;Landroid/service/notification/SnoozeCriterion;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;->mCriterion:Landroid/service/notification/SnoozeCriterion;

    .line 467
    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;->mMinutesToSnoozeFor:I

    .line 468
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;->mDescription:Ljava/lang/CharSequence;

    .line 469
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;->mConfirmation:Ljava/lang/CharSequence;

    .line 470
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;->mAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-void
.end method


# virtual methods
.method public getAccessibilityAction()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;->mAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object p0
.end method

.method public getConfirmation()Ljava/lang/CharSequence;
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;->mConfirmation:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getMinutesToSnoozeFor()I
    .locals 0

    .line 490
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;->mMinutesToSnoozeFor:I

    return p0
.end method

.method public getSnoozeCriterion()Landroid/service/notification/SnoozeCriterion;
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationSnooze$NotificationSnoozeOption;->mCriterion:Landroid/service/notification/SnoozeCriterion;

    return-object p0
.end method
