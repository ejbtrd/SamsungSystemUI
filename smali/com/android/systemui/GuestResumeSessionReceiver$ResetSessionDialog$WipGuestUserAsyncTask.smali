.class Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$WipGuestUserAsyncTask;
.super Landroid/os/AsyncTask;
.source "GuestResumeSessionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WipGuestUserAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$WipGuestUserAsyncTask;->this$0:Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;Lcom/android/systemui/GuestResumeSessionReceiver$1;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$WipGuestUserAsyncTask;-><init>(Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 182
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$WipGuestUserAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 186
    iget-object p1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$WipGuestUserAsyncTask;->this$0:Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;

    invoke-static {p1}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->access$200(Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;)Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$WipGuestUserAsyncTask;->this$0:Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;

    invoke-static {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->access$100(Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;)I

    move-result p0

    const/16 v0, -0x2710

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->removeGuestUser(II)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 182
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$WipGuestUserAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 192
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 193
    iget-object p0, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog$WipGuestUserAsyncTask;->this$0:Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;

    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->dismiss()V

    return-void
.end method
