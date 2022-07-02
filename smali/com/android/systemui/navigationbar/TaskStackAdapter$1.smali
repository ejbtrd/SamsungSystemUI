.class Lcom/android/systemui/navigationbar/TaskStackAdapter$1;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "TaskStackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/navigationbar/TaskStackAdapter;->addTaskStackListener(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/TaskStackAdapter;

.field final synthetic val$action:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/navigationbar/TaskStackAdapter;Ljava/lang/Runnable;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/android/systemui/navigationbar/TaskStackAdapter$1;->this$0:Lcom/android/systemui/navigationbar/TaskStackAdapter;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/TaskStackAdapter$1;->val$action:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/navigationbar/TaskStackAdapter$1;->val$action:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
