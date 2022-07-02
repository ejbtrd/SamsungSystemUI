.class public final synthetic Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/ShortcutManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ShortcutManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/statusbar/ShortcutManager;

    iput p2, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda14;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/statusbar/ShortcutManager;

    iget p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda14;->f$1:I

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->$r8$lambda$EuJl1y6rk3WjVa-t_XT090gkAmk(Lcom/android/systemui/statusbar/ShortcutManager;ILandroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method
