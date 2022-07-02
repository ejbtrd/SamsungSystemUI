.class Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;
.super Landroid/database/ContentObserver;
.source "PeopleSpaceWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;


# direct methods
.method public static synthetic $r8$lambda$3zc8LjVgNqk8VgDrmrWltU8f878(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;->lambda$onChange$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;Landroid/os/Handler;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$onChange$0()V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-static {p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->access$100(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 232
    iget-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-static {p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->access$000(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
