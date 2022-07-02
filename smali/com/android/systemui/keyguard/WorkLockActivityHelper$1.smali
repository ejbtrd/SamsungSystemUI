.class Lcom/android/systemui/keyguard/WorkLockActivityHelper$1;
.super Ljava/lang/Object;
.source "WorkLockActivityHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/WorkLockActivityHelper;->setContentForWLA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/WorkLockActivityHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/WorkLockActivityHelper;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/keyguard/WorkLockActivityHelper$1;->this$0:Lcom/android/systemui/keyguard/WorkLockActivityHelper;

    invoke-static {p0}, Lcom/android/systemui/keyguard/WorkLockActivityHelper;->access$000(Lcom/android/systemui/keyguard/WorkLockActivityHelper;)Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/WorkLockActivity;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/WorkLockActivity;->handleWorkLockActivityClick()V

    return-void
.end method
