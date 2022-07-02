.class public Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "GuestResumeSessionReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/GuestResumeSessionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResetSessionDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$WipGuestUserAsyncTask;
    }
.end annotation


# static fields
.field public static final BUTTON_DONTWIPE:I = -0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final BUTTON_WIPE:I = -0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mHasUserResponded:Z

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mUserId:I

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/internal/logging/UiEventLogger;I)V
    .locals 3

    .line 137
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 139
    sget v0, Lcom/android/systemui/R$string;->guest_wipe_session_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    sget v0, Lcom/android/systemui/R$string;->guest_wipe_session_message:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 143
    sget v1, Lcom/android/systemui/R$string;->guest_wipe_session_wipe:I

    .line 144
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    .line 143
    invoke-virtual {p0, v2, v1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 145
    sget v1, Lcom/android/systemui/R$string;->guest_wipe_session_dontwipe:I

    .line 146
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    .line 145
    invoke-virtual {p0, v1, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 148
    iput-object p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 149
    iput-object p3, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 150
    iput p4, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    .line 151
    iput-boolean v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mHasUserResponded:Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;)I
    .locals 0

    .line 118
    iget p0, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;)Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 157
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_RESTRICT_DIALOG_DISMISS_AT_USER_SWITCHING:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mHasUserResponded:Z

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x1

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 166
    iget-object p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_GUEST_WIPE:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    invoke-interface {p2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 167
    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_ENHANCEMENT_PERFORMANCE_AT_USER_SWITCHING:Z

    if-eqz p2, :cond_0

    .line 168
    iput-boolean p1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mHasUserResponded:Z

    .line 169
    new-instance p1, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$WipGuestUserAsyncTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$WipGuestUserAsyncTask;-><init>(Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;Lcom/android/systemui/GuestResumeSessionReceiver$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 170
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    const/16 v0, -0x2710

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->removeGuestUser(II)V

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->dismiss()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 176
    iget-object p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_GUEST_CONTINUE:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    invoke-interface {p2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 177
    iput-boolean p1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mHasUserResponded:Z

    .line 178
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method
