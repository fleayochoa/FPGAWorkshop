# Git & GitHub CLI (gh) Cheat Sheet
Guía de referencia rápida para flujos de trabajo locales y remotos esenciales.

## 1. Autenticación y Cuentas (GitHub CLI)
| Comando | Descripción / Utilidad |
| :--- | :--- |
| `gh auth login` | Inicia el proceso interactivo de autenticación en GitHub vía navegador o token. |
| `gh auth status` | Muestra el estado actual de la sesión, cuenta activa y métodos de autenticación. |
| `gh auth switch` | Permite alternar de forma interactiva entre múltiples cuentas configuradas. |
| `gh auth logout` | Cierra la sesión de una cuenta específica en el entorno local. |

## 2. Flujo de Trabajo Diario (Git Esencial)
| Comando | Descripción / Utilidad |
| :--- | :--- |
| `git status` | Muestra el estado de los archivos: modificados, agregados o listos para commit (*staging*). |
| `git add .` | Agrega todos los archivos modificados y nuevos al área de preparación (*staging*). |
| `git commit -m "mensaje"` | Consolida los cambios en el historial local con un mensaje descriptivo explicativo. |
| `git pull` | Descarga los cambios desde el repositorio remoto y los fusiona inmediatamente en la rama actual. |
| `git push` | Sube los commits locales confirmados a la rama correspondiente en el repositorio remoto. |

## 3. Control de Ramas y Sincronización (Git)
| Comando | Descripción / Utilidad |
| :--- | :--- |
| `git branch` | Lista todas las ramas locales. Usa `-a` para incluir las ramas remotas detectadas. |
| `git switch -c <nombre>` | Crea una nueva rama y se cambia a ella automáticamente (alternativa moderna a `checkout -b`). |
| `git switch <nombre>` | Cambia el entorno de trabajo a una rama local existente. |
| `git merge <rama>` | Fusiona la rama especificada dentro de la rama en la que te encuentras posicionado. |

## 4. Gestión de Repositorios y Pull Requests (GitHub CLI)
| Comando | Descripción / Utilidad |
| :--- | :--- |
| `gh repo clone <owner/repo>` | Clona un repositorio remoto de GitHub de forma directa sin necesidad de copiar la URL completa. |
| `gh repo create` | Inicia un asistente interactivo para crear un nuevo repositorio directamente en GitHub. |
| `gh pr create` | Crea un Pull Request en GitHub basado en los cambios de la rama actual de manera interactiva. |
| `gh pr list` | Muestra una lista en consola con los Pull Requests abiertos y activos en el repositorio actual. |
| `gh pr checkout <número>` | Descarga localmente la rama de un Pull Request específico utilizando su número identificador. |

---
**💡 Tip de integración:** Al usar juntos ambas herramientas, puedes inicializar un proyecto local con `git init`, realizar un `git add .` y `git commit`, y luego usar directamente `gh repo create` para subirlo a la nube y vincular el remoto de manera automática en un solo paso.
