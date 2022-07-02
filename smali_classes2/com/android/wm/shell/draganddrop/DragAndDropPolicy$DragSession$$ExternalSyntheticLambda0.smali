.class public final synthetic Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->$r8$lambda$ywrHhuVfpxTJtChCsIoxoYoQnMs(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method
