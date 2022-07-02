.class Lcom/android/systemui/statusbar/ShortcutManager$KeyguardBottomTaskCallback;
.super Ljava/lang/Object;
.source "ShortcutManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardBottomTaskCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ShortcutManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/ShortcutManager;)V
    .locals 0

    .line 1189
    iput-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager$KeyguardBottomTaskCallback;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/ShortcutManager;Lcom/android/systemui/statusbar/ShortcutManager$1;)V
    .locals 0

    .line 1189
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager$KeyguardBottomTaskCallback;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;)V

    return-void
.end method


# virtual methods
.method public updateShortcut()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1193
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager$KeyguardBottomTaskCallback;->this$0:Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcutsIcon(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
