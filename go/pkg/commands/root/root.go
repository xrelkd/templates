package root

import (
	"github.com/kris-nova/logger"
	"github.com/spf13/cobra"

	"github.com/xrelkd/fixa/pkg/commands/completion"
	"github.com/xrelkd/fixa/pkg/commands/version"
)

func Command() *cobra.Command {
	cmd := &cobra.Command{
		Use:          "fixa [command]",
		Short:        "Fixa",
		SilenceUsage: true,
		CompletionOptions: cobra.CompletionOptions{
			DisableDefaultCmd:   true,
			HiddenDefaultCmd:    true,
			DisableDescriptions: true,
		},
		Run: func(cmd *cobra.Command, _ []string) {
			if err := cmd.Help(); err != nil {
				logger.Debug("ignoring cobra error %q", err.Error())
			}
		},
	}

	cmd.AddCommand(version.Command())
	cmd.AddCommand(completion.Command())

	return cmd
}
